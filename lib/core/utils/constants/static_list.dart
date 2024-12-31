import 'package:course_online/core/utils/constants/image_path.dart';

import '../../../features/access_to_dashboard/data/coach_model_class.dart';

class StaticList{
  static final List<CoachModelClass> coaches = [
    CoachModelClass(
      name: 'Adam Williams',
      expertise: 'Expert Spoken',
      email: 'babdj334@gmail.com',
      level: 'Mid level',
      image: ImagePath.accessToDashboardAvatar2,
      rating: 4.5,
    ),
     CoachModelClass(
      name: 'Adam Jon',
      expertise: 'Expert Spoken',
      email: 'babdj334@gmail.com',
      level: 'Mid level',
       image: ImagePath.accessToDashboardAvatar2,
      rating: 4.5,
    ),
     CoachModelClass(
      name: 'David',
      expertise: 'Expert Spoken',
      email: 'babdj334@gmail.com',
      level: 'Mid level',
       image: ImagePath.accessToDashboardAvatar2,
      rating: 4.5,
    ),
     CoachModelClass(
      name: 'Williams',
      expertise: 'Expert Spoken',
      email: 'babdj334@gmail.com',
      level: 'Mid level',
       image: ImagePath.accessToDashboardAvatar2,
      rating: 4.5,
    )
  ];
}