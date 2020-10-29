
import 'package:flutter/material.dart';
import 'package:sidebar_animation/model/app_feature_model.dart';
import 'package:sidebar_animation/model/feature_tile_model.dart';
import 'package:sidebar_animation/model/testimonial_model.dart';

/// All the data

Color headerColor = Colors.black87;



String youtubeVideoUrl = "https://www.youtube.com/watch?v=FZ_y5C8LDL8";


List<TestimonialModel> getTestimonials(){

  List<TestimonialModel> myAppTestimonials = new List<TestimonialModel>();
  TestimonialModel testimonialModel = new TestimonialModel();

  /// setting the testimonials

  //1
  testimonialModel.setDescription("When something is important enough, you do it even if the odds are not in your favor");
  testimonialModel.setRating(5);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Elon Musk");
  testimonialModel.setDesignation("CEO of SpaceX");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = new TestimonialModel();






  return myAppTestimonials;

}

List<AppFeatureModel> getAppFeatures(){

  List<AppFeatureModel> appFeatures = new List<AppFeatureModel>();
  AppFeatureModel appFeatureModel = new AppFeatureModel();

  // setting up the features

  //1
  appFeatureModel.setImagePath("Jpura.png");
  appFeatureModel.setFeatureTitle("Our Mission");
  appFeatureModel.setFeatureDescription("The Japura student life is committed in enhancing the academic skills, professional skills and technical skills of all Japura ICT students..");
  appFeatures.add(appFeatureModel);

  appFeatureModel = new AppFeatureModel();

  //2
  appFeatureModel.setImagePath("");
  appFeatureModel.setFeatureTitle("Our Vision ");
  appFeatureModel.setFeatureDescription("The Japura student life will guide the students by providing innovative programs to learn about the technical skills of the profession.\nJapura student life will lead students to be united and will encourage them to learn and respect everyone’s ideas");
  appFeatures.add(appFeatureModel);


  return appFeatures;


}

List<FeatureTileModel> getFeaturesTiles1(){

  List<FeatureTileModel> tileFeatures = new List<FeatureTileModel>();
  FeatureTileModel featureTileModel = new FeatureTileModel();

  //1
  featureTileModel.setImagePath("img3.jpg");
  featureTileModel.setTitle("Education");
  featureTileModel.setDescription("In support of the student mission of the university we seek challenges that provide both professional and personal development of our students and staff.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //2
  featureTileModel.setImagePath("img2.jpg");
  featureTileModel.setTitle("Excellence");
  featureTileModel.setDescription("Promoting and encouraging excellence through innovative, creative and realistic concepts");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //3
  featureTileModel.setImagePath("img1.jpg");
  featureTileModel.setTitle("Teamwork");
  featureTileModel.setDescription("Engaging others with respect, openness and trust with a common purpose.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  return tileFeatures;
}

List<FeatureTileModel> getFeaturesTiles2(){

  List<FeatureTileModel> tileFeatures = new List<FeatureTileModel>();
  FeatureTileModel featureTileModel = new FeatureTileModel();

  //4
  featureTileModel.setImagePath("img1.jpg");
  featureTileModel.setTitle("Leadership");
  featureTileModel.setDescription("Providing opportunities to take leadership and perform in researches, academics, clubs, unions etc.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //5
  featureTileModel.setImagePath("img3.jpg");
  featureTileModel.setTitle("Responsibility to learners");
  featureTileModel.setDescription("Giving the students priority by providing the environment and support to ensure their academic and personal success.");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  //6
  featureTileModel.setImagePath("img2.jpg");
  featureTileModel.setTitle("Fun life");
  featureTileModel.setDescription("We also provide sports days, outings, trips and various other activities to distract the continuous academic  mindset of the students. ");
  tileFeatures.add(featureTileModel);

  featureTileModel = new FeatureTileModel();

  return tileFeatures;
}