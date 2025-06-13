import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mobile/atoms/logout_button.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/data/responses/profile.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/shimmers/profile_shimmer.dart';


class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifierProvider);

    Widget content;
    if (profileState.isInit || profileState.isLoading) {
      content = const ProfileShimmer();
    } else if (profileState.isSuccess) {
      final profile = profileState.data!.data;
      content = ProfileContent(profile: profile);
    } else {
      content = Center(child: Text('Error fetching profile ${profileState.error}'));
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),
      body: RefreshIndicator(
        onRefresh: () => ref.read(profileNotifierProvider.notifier).fetchProfile(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: content,
          ),
        ),
      ),
    );
  }
}

Map<String, String> profileToMap(Profile profile) {
  final dateFormat = DateFormat('MMMM d, y \'at\' h:mm a');

  return {
    'Name': '${profile.firstname} ${profile.lastname}',
    'Email': profile.email,
    'Phone Number': profile.phoneNumber,
    'Nationality': profile.nationality,
    'Role(s)': profile.roles.map((r) => r.name).join(', '),
    'Created At': dateFormat.format(profile.createdAt),
  };
}


class ProfileContent extends StatelessWidget {
  final Profile profile;

  const ProfileContent({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final profileMap = profileToMap(profile);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ClipOval(
            child: Image.network(
              profile.profilePicUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 80,
                height: 80,
                color: Colors.grey[300],
                child: const Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.grey,
                ),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  width: 80,
                  height: 80,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Personal Information",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 20),
        ...profileMap.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Text(
                  entry.key,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: DColors.neutral3,
                  ),
                ),
                const Spacer(),
                Text(
                  entry.value,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          );
        }),
        SizedBox(height: 60.0),
        LogoutButton()
      ],
    );
  }
}
