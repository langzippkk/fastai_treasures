


# Breaking points
[my translation contribution](https://www.youtube.com/timedtext_cs_panel?o=U&ar=2)
[my video manager](https://www.youtube.com/my_videos?o=U&ar=2)

0:00:01.520,0:00:03.260
[key1: intense lesson]
Welcome to lesson seven

0:00:03.260,0:00:06.660
the last lesson of part one

0:00:06.780,0:00:12.020
This will be a pretty intense lesson,

0:00:12.020,0:00:14.740
and so don't let that bother you,

0:00:14.740,0:00:18.380
because partly what I want to do is to

0:00:18.380,0:00:20.160
kind of give you enough things to think about

0:00:20.160,0:00:23.160
to keep you busy until part2

0:00:23.160,0:00:26.900
so in fact some of the things we cover today

0:00:26.900,0:00:29.620
I'm not going to tell you about some of the details

0:00:29.620,0:00:31.200
I'll just point out a few things

0:00:31.200,0:00:31.778
where I'll say like

0:00:31.778,0:00:32.480
okay that we're not talking about yet

0:00:32.480,0:00:34.060
and that we're not talking about that

0:00:34.060,0:00:35.980
And so then come back in part 2

0:00:35.980,0:00:39.760
to get the details on some of these extra pieces

0:00:39.760,0:00:45.340
so well, you know today will be a lot of material, pretty quickly

0:00:45.340,0:00:49.300
might require a few viewings to fully understand it all,

0:00:49.300,0:00:51.080
or a few experiments and so forth,

0:00:51.080,0:00:52.540
and that's kind of intentional

0:00:52.540,0:00:53.979
I'm trying to give you stuff

0:00:53.979,0:00:56.240
to keep you amused for a couple of months

0:00:56.240,0:01:00.480
[key2: food classifier app, community work]
want to start by

0:01:00.480,0:01:02.500
showing some cool work

0:01:02.500,0:01:04.640
done by a couple of students

0:01:04.640,0:01:07.680
@reshama and @npatta01

0:01:07.680,0:01:11.240
who have developed an Android and an iOS app

0:01:11.240,0:01:16.740
so check out Reshama's post on the forum about that

0:01:16.740,0:01:17.820
because they have a demonstration

0:01:17.820,0:01:21.880
of how to create a both Android and iOS apps

0:01:21.880,0:01:24.680
that are actually on the Play Store and on the Apple App Store

0:01:24.700,0:01:27.420
So that's pretty cool

0:01:27.420,0:01:28.380
first ones I know of

0:01:28.380,0:01:29.180
that are on the App Stores

0:01:29.180,0:01:30.120
that are using fastai

0:01:30.200,0:01:34.480
And let me also say a huge thank you to @reshama

0:01:34.480,0:01:35.840
for all of the work she does

0:01:35.840,0:01:40.160
both for the fastai community and the machine learning community generally

0:01:40.160,0:01:42.860
and also the women in machine learning community in particular

0:01:42.860,0:01:45.680
she does a lot of fantastic work

0:01:45.680,0:01:50.240
including providing lots of fantastic documentation and tutorials

0:01:50.240,0:01:53.260
and community organizing and so many other things

0:01:53.260,0:01:54.540
so thank you @reshama

0:01:54.540,0:01:57.000
and congrats on getting this app out there

0:01:57.000,0:02:01.957
[key3: first notebook objectives]
We have lots of lessons,

0:02:01.957,0:02:07.740
7 notebooks today as you can see

0:02:07.740,0:02:10.080
and we're going to start with the one

0:02:10.080,0:02:16.120
So the first notebook we're going to look at

0:02:16.120,0:02:17.940
is lesson 7 Resnet MNIST

0:02:17.940,0:02:19.540
And what I want to do

0:02:19.540,0:02:21.920
is to look at some of the stuff

0:02:21.920,0:02:23.460
we started talking about last week

0:02:23.460,0:02:25.680
around convolutions and convolutional neural networks

0:02:25.680,0:02:27.560
and start building on top of them

0:02:27.560,0:02:32.040
to create a fairly modern deep learning architecture

0:02:32.040,0:02:33.640
largely from scratch

0:02:33.660,0:02:35.000
when I say from scratch,

0:02:35.000,0:02:36.540
I'm not going to re-implement things

0:02:36.540,0:02:37.740
we already know how to implement

0:02:37.740,0:02:41.540
but kind of use the pre-existing pytorch bits of those

0:02:41.540,0:02:45.200
[key4: `URLs.MNIST`, `untar_data`]
So we're going to use the MNIST dataset

0:02:45.200,0:02:49.780
So URLs.MNIST has the whole MNIST dataset,

0:02:49.780,0:02:50.620
often we've done stuff

0:02:50.620,0:02:51.900
with a subset of it

0:02:52.000,0:02:53.120
[key5: check inside folder, `Path` and `path.ls`]
So in there

0:02:53.120,0:02:55.000
there's a training folder and a testing folder

0:02:55.000,0:02:59.000
[key6: data block api piece by piece]
And as I read this in

0:02:59.000,0:03:00.980
I'm going to show some more details

0:03:00.980,0:03:02.540
about pieces of the data blocks API

0:03:02.540,0:03:05.220
so that you kind of see what's going on

0:03:05.220,0:03:06.900
Normally with the data block API,

0:03:06.900,0:03:09.440
we've kind of said bla dot bla dot bla dot bla

0:03:09.440,0:03:10.420
and done it all in one cell,

0:03:10.560,0:03:12.000
but let's do them one cell at a time.

0:03:12.000,0:03:12.885
[key7: `ItemList`, `from_folder`]
So, first thing you say is,

0:03:12.885,0:03:14.000
what kind of ItemList do you have?

0:03:14.000,0:03:19.060
So in this case, it's an item list of images

0:03:19.060,0:03:22.680
[key8: `ImageList`, `from_folder`]
And then where are you getting the list of file names from

0:03:22.680,0:03:26.160
[key9: `get_files`]
in this case by looking in a folder recursively,

0:03:26.160,0:03:27.500
and that's where it's coming from

0:03:27.500,0:03:30.400
[key10: convert_mode='L' in `open_image` used by `ImageList.open`]
you can pass in arguments

0:03:30.400,0:03:31.500
that end up going to pillow

0:03:31.500,0:03:33.640
because pillow or PIL is the thing

0:03:33.640,0:03:35.420
that actually opens that for us

0:03:35.420,0:03:36.360
and In this case,

0:03:36.360,0:03:39.320
these are black and white rather than RGB

0:03:39.320,0:03:42.380
so you have to use pillow's convert_mode='L'

0:03:42.380,0:03:43.480
for more details

0:03:43.480,0:03:46.980
refer to the Python imaging library documentation

0:03:46.980,0:03:48.920
to see what their `convert_modes` are

0:03:48.920,0:03:52.000
but this one is going to be a grayscale

0:03:52.000,0:03:53.800
[key11: What are `URLs.MNIST`, `ItemList.items`]
Which is what MNIST is

0:03:53.800,0:03:59.320
So inside an ItemList is an `items` attribute

0:03:59.320,0:04:02.880
and the items attribute is kind of the thing that you gave it

0:04:02.880,0:04:05.560
It's the thing that it's going to use to create your items

0:04:05.560,0:04:06.160
so in this case

0:04:06.160,0:04:08.320
the thing you gave really is a list of filenames.

0:04:08.320,0:04:11.300
[key12: How to get files from folder `ItemList.from_folder`]
That's what it got from the folder

0:04:11.300,0:04:12.600
[key13: see how `ImageList` overwrite on `ItemList`]
Okay

0:04:12.600,0:04:16.780
When you show images normally it shows them in RGB

0:04:16.780,0:04:18.720
And so in this case,

0:04:18.720,0:04:20.420
we want to use a binary color map

0:04:20.420,0:04:22.580
So in fastai you can set a default color map

0:04:22.580,0:04:25.260
for more information about `cmap` and color maps

0:04:25.260,0:04:28.000
refer to the matplotlib documentation

0:04:28.000,0:04:31.400
and so this will set the default color map for fastai

0:04:31.400,0:04:36.120
Okay, so our ImageItemList (now ImageList) contains 70,000 items

0:04:36.120,0:04:40.000
and it's a bunch of images that are 1 by 28 by 28

0:04:40.000,0:04:42.500
Remember that pytorch puts channel first.

0:04:42.620,0:04:45.120
So there's 1 channel by 28 by 28

0:04:45.200,0:04:50.580
You might think why aren't they just 28 by 28 matrices,

0:04:50.700,0:04:53.000
rather than a 1 by 28 by 28 rank 3 tensor

0:04:53.140,0:04:54.760
It's just easier that way

0:04:54.760,0:04:59.500
all the conv2d stuff and so forth works on rank 3 tensors

0:04:59.500,0:05:04.020
So you want to include that unit axis at the start.

0:05:04.020,0:05:11.100
And so fastai I will do that for you, even when it's reading one channel images

0:05:11.140,0:05:14.560
So the `.items` attribute contains the things

0:05:14.560,0:05:17.260
that's kind of read to build the image,

0:05:17.260,0:05:18.380
which in this case is the filename

0:05:18.380,0:05:20.640
But if you just index into an ItemList directly,

0:05:20.640,0:05:22.680
you'll get the actual image object

0:05:22.680,0:05:25.820
Okay, and so the actual image object has a `show` method

0:05:25.820,0:05:27.480
and so there's the image

0:05:27.480,0:05:29.740
So once you've got an ImageItemList (now ImageList)

0:05:29.740,0:05:32.800
you then split it into training versus validation

0:05:32.800,0:05:35.260
You nearly always want validation

0:05:35.260,0:05:36.460
If you don't

0:05:36.460,0:05:39.540
you can actually use the `.no_split` method

0:05:39.540,0:05:42.100
to create a kind of empty validation set

0:05:42.100,0:05:44.120
You can't skip it entirely

0:05:44.120,0:05:45.800
you have to say how to split

0:05:45.800,0:05:48.600
and one of the options is no_split, right?

0:05:48.600,0:05:50.160
And so remember that's always the order

0:05:50.160,0:05:51.820
first create your ItemList

0:05:51.820,0:05:53.440
then decide how to split

0:05:53.440,0:05:56.020
in this case, we're gonna do it based on folders

0:05:56.020,0:06:03.300
In this case the validation folder for MNIST is called testing

0:06:03.300,0:06:06.420
so in kind of fastai's parlance

0:06:06.420,0:06:08.720
we use the same kind of parlance that Kaggle does

0:06:08.720,0:06:11.240
which is the training set, is what you train on

0:06:11.240,0:06:13.800
the validation set has labels

0:06:13.800,0:06:15.880
and you do it for testing that (whether) your model's working

0:06:15.880,0:06:18.660
the test set doesn't have labels and

0:06:18.660,0:06:22.140
You use it for doing inference or

0:06:22.140,0:06:23.540
submitting to a competition

0:06:23.540,0:06:25.180
or sending it off to somebody

0:06:25.180,0:06:27.100
who's held out those labels for,

0:06:27.100,0:06:29.380
you know, vendor testing or whatever

0:06:29.500,0:06:32.760
Okay, so just because a folder in your data set is called testing

0:06:32.760,0:06:34.860
doesn't mean it's a test set, right?

0:06:34.860,0:06:35.860
This one has labels.

0:06:35.860,0:06:37.100
So it's a validation set

0:06:37.100,0:06:41.120
Okay, so if you want to do inference on,

0:06:41.120,0:06:43.100
you know, lots of things at a time

0:06:43.100,0:06:44.140
rather than one thing at a time

0:06:44.140,0:06:48.440
you want to use the `test=` in fastai

0:06:48.440,0:06:51.400
to say this is stuff which has no labels

0:06:51.400,0:06:54.100
and I'm just using for inference

0:06:54.100,0:06:58.020
okay, so my split data is a training set and a validation set

0:06:58.020,0:07:00.720
as you can see

0:07:00.720,0:07:03.960
so inside the training set

0:07:03.960,0:07:08.160
there's a folder for each image for each class

0:07:08.160,0:07:12.320
So now we can take that split data `sd`

0:07:12.320,0:07:13.760
and say label_from_folder.

0:07:13.760,0:07:15.380
So first you create the ItemList,

0:07:15.380,0:07:16.040
then you spit it

0:07:16.040,0:07:17.000
then you label it

0:07:17.000,0:07:21.420
and so you can see now we have an x and a y

0:07:21.420,0:07:25.020
and the Y are category objects

0:07:25.020,0:07:28.440
Category object is just a class basically

0:07:28.440,0:07:34.100
So if you index into a LabelList

0:07:34.100,0:07:36.680
such as `ll.train` as a label list,

0:07:36.680,0:07:42.500
you will get back an independent variable independent variable x and y.

0:07:42.500,0:07:45.300
So this case, the x will be an image object, which I can show

0:07:45.300,0:07:48.500
And the y will be a category object,

0:07:48.500,0:07:50.040
which I can print

0:07:50.040,0:07:55.100
That's number 8 category and there's the 8

0:07:55.100,0:07:58.300
Next thing we can do is to add transforms

0:07:58.300,0:08:03.680
In this case, we're not going to use the normal `get_transforms` function

0:08:03.680,0:08:06.380
because we're doing digit recognition

0:08:06.380,0:08:09.880
and digit recognition like you wouldn't want to flip it left or right

0:08:09.880,0:08:11.340
That would change the meaning of it

0:08:11.340,0:08:13.300
You wouldn't want to rotate it too much.

0:08:13.420,0:08:14.460
That would change the meaning of it

0:08:14.460,0:08:16.260
Also because these images are so small

0:08:16.260,0:08:20.060
kind of doing zooms and stuff is going to make them so fuzzy to be unreadable

0:08:20.060,0:08:24.380
So normally for small images of digits like this.

0:08:24.380,0:08:25.800
You just add a bit of random padding.

0:08:25.800,0:08:28.520
So I'll use the random padding function,

0:08:28.520,0:08:31.740
which actually returns two transforms

0:08:31.740,0:08:33.180
so a bit that does the padding

0:08:33.180,0:08:34.560
and the bit that does the random crop

0:08:34.560,0:08:38.140
so you have to use star (*) to say put both these transforms in this list

0:08:38.140,0:08:40.860
So now we can call `.transform(tfms)`

0:08:40.860,0:08:45.840
This empty array here is referring to the validation set transforms.

0:08:45.840,0:08:47.100
So no transforms for the validation set

0:08:47.100,0:08:53.300
Now we've got a transformed labeled lists (LabelLists)

0:08:53.300,0:08:56.720
we can pick a batch size and choose `.databunch(bs=bs)`

0:08:56.720,0:08:58.360
We can choose `.normalize()`

0:08:58.360,0:09:01.340
In this case, we're not using a pre-trained model.

0:09:01.340,0:09:04.500
So there's no reason to use imagenet stats here

0:09:04.500,0:09:11.680
And so if you call normalize like this without passing in stats

0:09:11.680,0:09:14.300
It will grab a batch of data at random

0:09:14.300,0:09:18.300
and use that to decide what normalization stats to use

0:09:18.300,0:09:22.100
that's a good idea if you're not using a pre-trained model

0:09:22.100,0:09:25.580
Okay, so we've got a databunch

0:09:25.620,0:09:33.720
and so in that databunch is a dataset which we've seen already

0:09:33.800,0:09:37.540
But what is interesting is that the training dataset now has data augmentation

0:09:37.560,0:09:39.480
because you've got transforms

0:09:39.540,0:09:45.280
So plot_multi is a fastai function that we all plot the result of calling some function

0:09:45.360,0:09:48.160
for each of this row by column grid

0:09:48.320,0:09:52.340
so in this case, my function is just grab the first image from the training set

0:09:52.340,0:09:55.820
and because each time you grab something from the training set

0:09:55.820,0:09:57.140
It's going to load it from disk

0:09:57.140,0:10:00.400
and it's going to transform it on the fly

0:10:00.400,0:10:03.620
So people sometimes ask like,

0:10:03.620,0:10:06.680
how many transformed versions of the image do you create

0:10:06.680,0:10:09.420
and the answer is kind of infinite

0:10:09.420,0:10:12.140
each time we grab one thing from the dataset

0:10:12.140,0:10:14.760
We do a random transform on the fly

0:10:14.760,0:10:17.980
so potentially everyone will look a little bit different

0:10:17.980,0:10:22.420
So you can see here we plot the result of that lots of times

0:10:22.420,0:10:25.260
we get eights in slightly different positions

0:10:25.260,0:10:27.600
because we did random padding

0:10:27.680,0:10:32.960
You can always grab a batch of data then from the DataBunch,

0:10:32.960,0:10:35.760
because remember a databunch has dataloaders

0:10:35.760,0:10:38.860
and dataloaders are things that you grab a batch at a time

0:10:38.860,0:10:42.300
And so you can then grab our x batch and a y batch

0:10:42.300,0:10:43.600
look at their shape

0:10:43.600,0:10:46.260
batch size by channel by row by column

0:10:46.260,0:10:50.000
all fastai databunches have a `show_batch`,

0:10:50.000,0:10:55.140
which will show you what's in it in some sensible way

0:10:55.140,0:11:01.600
Okay, so that's a quick walk through with the data block API stuff to grab our data

0:11:01.600,0:11:07.360
So let's start out creating a simple CNN, simple convnet

0:11:07.360,0:11:11.440
so the input is 28 by 28

0:11:11.440,0:11:14.740
so, let's define

0:11:14.740,0:11:17.980
I like to define, when I'm creating architectures,  a function

0:11:17.980,0:11:21.060
Which kind of does the things that I do again and again, and again,

0:11:21.060,0:11:22.760
I don't want to call it with the same arguments

0:11:22.760,0:11:24.000
because I'll forget, I'll make a mistake

0:11:24.000,0:11:30.960
so in this case, all of my convolutions are going to be kernel size 3, stride 2, padding 1

0:11:30.960,0:11:35.500
so let's just create a simple function to do a conv with those parameters

0:11:35.600,0:11:36.980
So you try to have a convolution.

0:11:36.980,0:11:41.320
It's skipping over one pixel

0:11:41.320,0:11:44.320
so it's doing jumping two steps each time

0:11:44.320,0:11:47.140
So that means that each time we have a convolution.

0:11:47.140,0:11:49.040
It's going to halve the grid size

0:11:49.040,0:11:51.340
So I've put a comment here

0:11:51.340,0:11:54.380
showing what the new grid size is after each one

0:11:54.380,0:11:58.480
so after the first convolution we have one channel coming in

0:11:58.480,0:12:01.640
because remember it's a grayscale image with one channel

0:12:01.640,0:12:03.820
and then how many channels coming out

0:12:03.820,0:12:05.580
Whatever you like

0:12:05.580,0:12:11.020
So remember you always get to pick how many filters you create

0:12:11.020,0:12:13.500
regardless of whether it's a fully connected layer

0:12:13.500,0:12:17.320
in which case it's just the the width of the matrix you're multiplying by

0:12:17.320,0:12:19.520
or in this case with a conv2d

0:12:19.520,0:12:22.700
It's just how many how many filters do you want?

0:12:22.700,0:12:26.460
So I picked 8 and, so after this, it's stride 2

0:12:26.460,0:12:33.080
so the 28 by 28 image is now a 14 by 14 feature map with 8 channels,

0:12:33.080,0:12:41.000
so specifically therefore, it's an 8 by 14 by 14 tensor of activations

0:12:41.000,0:12:43.180
Then we'll do batch norm, then we'll do ReLU

0:12:43.180,0:12:46.360
So the number of input filters to the next conv

0:12:46.360,0:12:49.000
has to equal the number of output filters from the previous conv

0:12:49.000,0:12:52.320
and we can just keep increasing the number of channels

0:12:52.320,0:12:54.400
Because we're doing stride 2,

0:12:54.400,0:12:56.580
it's going to keep decreasing the grid size

0:12:56.580,0:12:59.660
notice here, it goes from 7 to 4

0:12:59.660,0:13:03.560
because if you're doing a stride 2 conv over 7,

0:13:03.560,0:13:09.160
it's going to be kind of math.ceiling of 7/2

0:13:09.160,0:13:12.360
batch norm, ReLU

0:13:12.360,0:13:15.060
Conv, we are now down to 2 by 2,

0:13:15.060,0:13:16.220
batch norm, ReLU, conv.

0:13:16.220,0:13:18.000
We're now down to 1 by 1 right.

0:13:18.000,0:13:27.120
So after this, we have a feature map of

0:13:27.120,0:13:32.980
Let's see 10 by 1 by 1

0:13:32.980,0:13:35.460
Does that make sense?

0:13:35.460,0:13:36.420
We've got a grid size of one now

0:13:36.420,0:13:39.740
so it's not a vector of length 10

0:13:39.740,0:13:44.940
it's a rank 3 tensor of 10 by 1 by 1

0:13:44.940,0:13:51.780
so our loss functions expect generally a vector, not a rank 3 tensor

0:13:51.780,0:13:54.520
so you can chuck `Flatten` at the end

0:13:54.520,0:13:59.140
and `Flatten` just means remove any unit axes,

0:13:59.140,0:14:02.780
so that will make it now just a vector of length 10,

0:14:02.780,0:14:04.740
which is what we always expect

0:14:04.740,0:14:09.000
So that's how we can create a CNN

0:14:09.100,0:14:13.000
So then we can return that into a learner by passing in the data

0:14:13.180,0:14:18.800
and the model and the loss function and If optionally some metrics

0:14:18.800,0:14:21.320
so we're going to use cross-entropy as usual

0:14:21.320,0:14:23.800
So we can then call learn.summary()

0:14:23.800,0:14:25.960
and confirm after that first conv

0:14:25.960,0:14:27.700
We're down to 14 by 14

0:14:27.700,0:14:30.380
and after the second column 7 by 7

0:14:30.380,0:14:35.900
and 4 by 4, 2 by 2, 1 by 1

0:14:35.900,0:14:38.380
the `Flatten` comes out calling it a `lambda`

0:14:38.380,0:14:41.320
But that as you can see it gets rid of the 1 by 1

0:14:41.320,0:14:44.140
then it's now just a length 10 vector

0:14:44.140,0:14:46.500
For each item in a batch.

0:14:46.500,0:14:49.520
So 128 by 10 matrix of the whole mini batch

0:14:49.520,0:14:54.540
So just to confirm that this is working ok,

0:14:54.540,0:14:59.280
we can grab that mini batch of x that we created earlier

0:14:59.280,0:15:01.100
There's a mini-batch of x

0:15:01.100,0:15:02.660
pop it onto the GPU and

0:15:02.660,0:15:05.260
Call the model directly.

0:15:05.260,0:15:08.560
Remember any pytorch module we can pretend as a function

0:15:08.560,0:15:13.260
And that gives us back as we hoped, 128 by 10

0:15:13.260,0:15:17.400
Resolved. Ok, so that's how you can directly get some predictions out

0:15:17.400,0:15:19.440
`lr_find`

0:15:19.440,0:15:22.160
`fit_one_cycle()` and bang.

0:15:22.160,0:15:27.280
We already have a 98.6% accurate convnet

0:15:27.280,0:15:32.020
And this is trained from scratch. Of course. It's not pre-trained

0:15:32.020,0:15:33.760
We literally created our own architecture

0:15:33.760,0:15:36.080
about the simplest possible architecture you can imagine,

0:15:36.080,0:15:37.220
18 seconds to train

0:15:37.220,0:15:42.340
So that's how easy it is to create a pretty accurate digit detector.

0:15:42.340,0:15:45.100
So let's refactor that a little

0:15:45.100,0:15:50.780
Rather than saying conv, BatchNorm2d, ReLU, all the time

0:15:50.780,0:15:54.580
fastai already has something called conv_layer,

0:15:54.580,0:16:00.020
which let you create conv, batchnorm, relu combinations

0:16:00.020,0:16:03.560
and it has various other options to do other tweaks to it,

0:16:03.560,0:16:06.160
but the basic version is just exactly what I just showed you

0:16:06.160,0:16:08.900
so we can refactor that like so

0:16:08.900,0:16:11.620
that's exactly the same neuralnet

0:16:11.620,0:16:16.600
And so, you know, Let's just try it a little bit longer

0:16:16.600,0:16:21.560
and it's actually 99.1 percent accurate if we train it for over a minute,

0:16:21.560,0:16:23.100
so that's cool

0:16:23.100,0:16:27.880
So, How can we improve this?

0:16:28.000,0:16:33.300
Well, what we really want to do is create a deeper network

0:16:33.300,0:16:36.640
so a very easy way to create a deeper network

0:16:36.640,0:16:41.700
would be after every stride 2 conv add a stride 1 conv

0:16:41.700,0:16:45.780
Because the stride 1 conv doesn't change the feature map size at all.

0:16:45.780,0:16:47.340
So you can add as many as you like

0:16:47.340,0:16:53.760
Right, but there's a problem

0:16:53.760,0:16:56.320
the problem was pointed out in this paper

0:16:56.320,0:16:58.760
Very very very influential paper called

0:16:58.760,0:17:01.300
deep residual learning for image recognition

0:17:01.300,0:17:05.840
By Kaiming He and colleagues at then Microsoft Research

0:17:05.840,0:17:07.940
And they did something interesting

0:17:07.940,0:17:09.500
They said let's look at the training error.

0:17:09.500,0:17:12.620
So forget generalization even, let's just look at the training error

0:17:12.620,0:17:15.960
of a network trained on cifar 10

0:17:15.960,0:17:22.520
And let's try one network of 20 layers just basic 3x3 convs.

0:17:22.520,0:17:24.360
Just basically the same network I just showed you

0:17:24.360,0:17:27.180
but without batch norm

0:17:27.180,0:17:34.180
Let's try to train a 20 layer one and a 56 layer one on the training set

0:17:34.180,0:17:37.020
So the 56 layer one has a lot more parameters.

0:17:37.020,0:17:39.600
It's got a lot more of these stride 1 convs in the middle

0:17:39.600,0:17:44.740
So the one with more parameters should seriously overfit right?

0:17:44.740,0:17:50.880
so you would expect the 56 layer one to zip down to zero-ish training error pretty quickly.

0:17:50.880,0:17:52.420
And that is not what happens

0:17:52.420,0:17:55.120
It is worse than the shallower network

0:17:55.120,0:17:58.160
So when you see something weird happen

0:17:58.160,0:18:02.160
really good researchers, don't go. Oh, no. It's not working

0:18:02.160,0:18:04.700
They go that's interesting.

0:18:04.820,0:18:08.620
So, Kaiming He said that's interesting

0:18:08.620,0:18:10.340
What's going on?

0:18:10.340,0:18:13.200
and he said I don't know

0:18:13.200,0:18:16.040
but what I do know is this

0:18:16.040,0:18:19.240
I could take this 56 layer Network

0:18:19.240,0:18:23.780
and make a new version of it,  which is identical

0:18:23.780,0:18:27.460
but has to be at least as good as the 20 layer network

0:18:27.460,0:18:28.480
and here's how

0:18:28.480,0:18:31.900
every two convolutions,

0:18:31.900,0:18:38.480
I'm going to add together the input to those two convolutions

0:18:38.480,0:18:44.340
add it together with the result of those two convolutions.

0:18:44.340,0:18:48.440
So in other words he's saying, instead of saying,

0:18:48.440,0:18:56.500
output equals conv2 (second conv) of  conv1 (first conv) of x

0:18:56.500,0:19:08.500
Instead he's saying output equals x plus
conv2 of conv1 of x

0:19:08.500,0:19:17.300
So that 56 layers worth of convolutions in that

0:19:17.300,0:19:22.380
His theory was has to be at least as good as the twenty layer version

0:19:22.380,0:19:29.340
because it could always just set conv2 and conv1 to a bunch of zero weights

0:19:29.340,0:19:31.920
for everything except for the first 20 layers

0:19:31.920,0:19:36.780
because the x, the input could just go straight through

0:19:36.780,0:19:39.160
so this thing here is

0:19:39.160,0:19:42.980
As you see called an identity connection.

0:19:42.980,0:19:46.860
It's the identity function, nothing happens at all.

0:19:46.860,0:19:48.660
It's also known as a skip connection

0:19:48.660,0:19:51.140
So that was a theory right?

0:19:51.140,0:19:55.400
That's what the paper describes as the intuition behind this is

0:19:55.400,0:19:58.200
What would happen if we created something,

0:19:58.200,0:20:02.580
which has to train at least as well as a 20 layer neural network

0:20:02.580,0:20:05.340
because it kind of contains that 28 layer neural network

0:20:05.340,0:20:09.300
it's literally a path you can just skip over all the convolutions

0:20:09.300,0:20:11.980
and so what happens

0:20:11.980,0:20:15.060
and what happened was?

0:20:15.060,0:20:17.780
He won imagenet that year.

0:20:17.780,0:20:20.140
He easily won imagenet that year

0:20:20.140,0:20:22.560
and in fact, you know even today

0:20:22.560,0:20:29.180
You know, we had that record-breaking result on imagenet speed training ourselves,

0:20:29.180,0:20:32.840
you know in the last year we used this too

0:20:32.840,0:20:36.300
you know Resnet has been revolutionary

0:20:36.300,0:20:39.800
and anytime here's a trick

0:20:39.800,0:20:42.100
if you're interested in doing some research, some novel  research

0:20:42.100,0:20:46.980
Anytime you find some model for anything

0:20:46.980,0:20:49.040
whether it was like medical image segmentation

0:20:49.040,0:20:52.640
or you know some kind of gan or whatever

0:20:52.640,0:20:56.640
You know and it was written a couple of years ago

0:20:56.640,0:21:01.100
They might have forgotten to put Resnet in, Res-block in

0:21:01.100,0:21:03.720
This is what we normally call it, a Res-block.

0:21:03.720,0:21:05.800
They might have forgotten to put Res-blocks in

0:21:05.800,0:21:10.900
so replace their convolutional path with a bunch of Res-blocks

0:21:10.900,0:21:14.540
and you'll almost always get better results faster.

0:21:14.540,0:21:16.700
It's a good trick

0:21:16.720,0:21:22.380
So at neurIPS which Rachel and I and David we all just came back from and Sylvain

0:21:22.380,0:21:26.200
We saw a new presentation

0:21:26.200,0:21:33.020
Where they actually figured out how to visualize the loss surface of a neural net

0:21:33.020,0:21:34.320
which is really cool

0:21:34.320,0:21:36.000
this is a fantastic paper and

0:21:36.000,0:21:38.760
anybody who's watching this lesson 7

0:21:38.760,0:21:44.040
is at a point where they will understand most of the most important concepts in this paper

0:21:44.040,0:21:45.860
You could read this now.

0:21:45.860,0:21:47.240
You won't necessarily get all of it

0:21:47.240,0:21:50.300
But I'm sure you'll get enough to find it interesting.

0:21:50.300,0:21:53.480
And so the big picture was this one

0:21:53.480,0:21:56.380
Here's what happens if you draw a picture

0:21:56.380,0:22:02.360
where kind of X&Y, are two projections of the weights space

0:22:02.360,0:22:04.360
and Z is the loss

0:22:04.360,0:22:06.800
and so as you move through the weights space

0:22:06.800,0:22:12.580
a 56 layer neural network without skip connections is very very bumpy

0:22:12.580,0:22:16.460
and that's why this got nowhere

0:22:16.460,0:22:20.200
because it just got stuck in all these hills and valleys

0:22:20.200,0:22:25.940
the exact same network with identity connections, with skip connections

0:22:25.940,0:22:28.040
has this lost landscape

0:22:28.040,0:22:31.380
Right, so it's kind of interesting.

0:22:31.380,0:22:36.240
How He recognized back in 2015

0:22:36.240,0:22:39.500
You know, this shouldn't happen.

0:22:39.500,0:22:41.400
Here's a way that must fix it

0:22:41.400,0:22:46.200
and it took three years before people were able to say oh this is kind of why

0:22:46.200,0:22:47.700
It fixed it.

0:22:47.700,0:22:50.940
It kind of reminds me of the batch norm discussion we had a couple of weeks ago

0:22:50.940,0:22:56.700
People are realizing a little bit after the fact sometimes what's going on and why it helps

0:22:56.700,0:23:09.880
so, in our code we can create a res_block in just the way I described

0:23:09.880,0:23:12.060
we create a nn.module

0:23:12.060,0:23:14.060
we create two conv_layers

0:23:14.060,0:23:18.740
remember a conv_layer is kind of conv2d, batch norm, relu

0:23:18.740,0:23:23.120
So conv2d, relu, batch norm,

0:23:23.120,0:23:24.760
So create two of those

0:23:24.760,0:23:26.320
and then in forward we go

0:23:26.320,0:23:31.200
conv1 of x, conv2 of that, and then add x

0:23:31.200,0:23:36.060
There's a res-block function already in fastai

0:23:36.060,0:23:39.860
so you can just call res_block instead

0:23:39.860,0:23:44.900
and you just pass in something saying how many filters you want

0:23:44.900,0:23:50.220
So yeah, so there's the ResBlock that I defined in a notebook

0:23:50.220,0:23:53.300
And so with that res_block

0:23:53.300,0:23:55.600
we can now take every one of those.

0:23:55.600,0:23:58.700
I've just copied the previous CNN

0:23:58.700,0:24:02.320
and after every conv2 except the last one, I added a res-block

0:24:02.320,0:24:05.960
So this now got three times as many layers

0:24:05.960,0:24:08.080
So it should be able to do more compute

0:24:08.080,0:24:10.940
but it shouldn't be any harder to optimize

0:24:10.940,0:24:13.120
So what happens?

0:24:13.120,0:24:16.420
Well, let's just refactor it one more time

0:24:16.420,0:24:19.080
since I go conv2, res_block so many times

0:24:19.080,0:24:24.700
Let's just pop that into a little mini sequential model here

0:24:24.760,0:24:25.820
And so I can refactor that like so

0:24:25.820,0:24:30.040
like keep refactoring your architectures if you're trying novel architectures

0:24:30.040,0:24:30.920
because you'll make less mistakes

0:24:30.920,0:24:32.860
Very few people do this.

0:24:32.860,0:24:36.660
Most research codes you look at is as clunky as all hell

0:24:36.660,0:24:39.140
and people often make mistakes in that way.

0:24:39.140,0:24:40.720
So don't do that

0:24:40.720,0:24:42.400
you know, you're all coders

0:24:42.400,0:24:47.160
So use your coding skills to make life easier

0:24:47.160,0:24:52.500
Okay, so there's my ResNet-ish architecture

0:24:52.500,0:24:56.740
and lr_find as usual

0:24:56.740,0:24:59.000
fit for a while and

0:24:59.000,0:25:04.160
I get 0.9954

0:25:04.160,0:25:10.200
so, that's interesting because we've trained this literally from scratch

0:25:10.200,0:25:12.260
with an architecture we built from scratch

0:25:12.260,0:25:14.860
I didn't look at this architecture anywhere.

0:25:14.860,0:25:17.700
It's just the first thing that came to mind

0:25:17.700,0:25:19.280
but in terms of where that puts us,

0:25:19.280,0:25:20.720
0.45% error is

0:25:20.720,0:25:25.520
around about the state of the art for this dataset

0:25:25.520,0:25:28.000
as of three or four years ago

0:25:28.000,0:25:34.080
Now, you know today MNIST is considered kind of trivially easy dataset.

0:25:34.080,0:25:37.260
So I'm not saying like well, we've broken some records here.

0:25:37.260,0:25:40.060
People have got beyond 0.45% error,

0:25:40.060,0:25:42.480
but what I'm saying is that, you know,

0:25:42.480,0:25:49.760
This kind of Resnet is genuinely

0:25:49.760,0:25:52.520
extremely useful network still today

0:25:52.520,0:25:57.320
and this is really all we use in our fast image net training still

0:25:57.320,0:26:00.640
and one of the reasons as well is that it's so popular

0:26:00.640,0:26:04.160
so the the vendors of the library spend a lot of time optimizing it

0:26:04.160,0:26:06.600
So things tend to work fast

0:26:06.600,0:26:11.700
Where are some more modern style architectures

0:26:11.700,0:26:14.040
using things like separable or group convolutions

0:26:14.040,0:26:16.820
tend not to actually train very quickly in practice

0:26:16.820,0:26:24.400
If you look at the definition of res_block in the fastai code

0:26:24.400,0:26:27.700
you'll see it looks a little bit different to this

0:26:27.700,0:26:30.640
and that's because I've created something called a merge layer

0:26:30.640,0:26:34.160
and a merge layer is something which in the forward

0:26:34.160,0:26:35.940
just keep dense for a moment

0:26:35.940,0:26:40.020
the forward says `x + x.orig`

0:26:40.020,0:26:43.920
So you can see that something ResNet-ish going on here.

0:26:43.920,0:26:45.580
What is `x.orig`?

0:26:45.580,0:26:50.560
Well, if you create a special kind of sequential model called a sequentialEx.

0:26:50.560,0:26:54.220
So this is like the fastai's Sequential Extended

0:26:54.220,0:26:56.060
it's just like a normal sequential model,

0:26:56.060,0:27:00.100
but we store the input in `x.orig`

0:27:00.100,0:27:09.120
Right. And so this here is the SequentialEx, conv_layer, conv_layer, MergeLayer,

0:27:09.120,0:27:12.160
will do exactly the same as this.

0:27:12.160,0:27:17.080
Okay, so you can create your own variations of ResNet blocks very easily

0:27:17.080,0:27:19.980
with just SequentialEx and MergeLayer

0:27:19.980,0:27:23.600
So there's something else here

0:27:23.600,0:27:24.940
which is when you create your MergeLayer

0:27:24.940,0:27:28.100
you can optionally set `dense = true`

0:27:28.100,0:27:29.520
What happens if you do?

0:27:29.520,0:27:32.580
well If you do, it doesn't go `x + x.orig`

0:27:32.580,0:27:36.280
it goes torch.cat([x, x.orig], dim=1)

0:27:36.280,0:27:41.560
in other words, rather than putting a + in this connection.

0:27:41.560,0:27:43.020
It does a concatenate

0:27:43.020,0:27:45.480
so that's pretty interesting

0:27:45.480,0:27:47.980
because what happens is that

0:27:47.980,0:27:53.540
you have your input coming into your res-block

0:27:53.540,0:27:56.140
and once you use concatenate instead of plus

0:27:56.140,0:27:57.920
it's not called a res-block anymore

0:27:57.920,0:27:59.140
It's called a dense block

0:27:59.140,0:28:01.500
and it's not called a ResNet anymore

0:28:01.500,0:28:02.680
it is called a dense net

0:28:02.680,0:28:07.140
So the dense net was invented about a year after the ResNet

0:28:07.140,0:28:08.840
and if you read the densenet paper

0:28:08.840,0:28:11.020
It can sound incredibly complex and different

0:28:11.020,0:28:12.940
but actually it's literally identical

0:28:12.940,0:28:16.780
but + here is replaced with with `torch.cat`

0:28:16.780,0:28:19.380
So you have your input coming into your dense block right?

0:28:19.380,0:28:22.860
And you've got a kind of few convolutions in here

0:28:22.860,0:28:26.000
and then you've got some output coming out

0:28:26.000,0:28:27.940
and then you've got your identity connection

0:28:27.940,0:28:30.900
and remember it doesn't plus it concates.

0:28:30.900,0:28:32.720
So this is the channel access

0:28:32.720,0:28:34.380
It gets a little bit bigger

0:28:34.380,0:28:38.060
All right, and then so we do another dense block,

0:28:38.060,0:28:39.640
right and at the end of that

0:28:39.640,0:28:43.600
we have, you know all of this coming in

0:28:43.600,0:28:49.300
so at the end of that we have, you know

0:28:49.300,0:28:51.300
the result of the convolution as per usual,

0:28:51.300,0:28:56.540
but this time the identity bloc is that big right

0:28:56.540,0:28:59.160
so you can see that what happens is

0:28:59.160,0:29:02.340
that with dense blocks It's getting bigger and bigger and bigger

0:29:02.340,0:29:08.120
and kind of interestingly the exact input is still here

0:29:08.120,0:29:12.020
Right, so that actually no matter how deep you get

0:29:12.020,0:29:14.340
the original input pixels are still there

0:29:14.340,0:29:15.960
and the original layer 1 features are still there

0:29:15.960,0:29:17.400
the original layer 2 features are still there.

0:29:17.400,0:29:20.440
So, as you can imagine

0:29:20.440,0:29:23.460
Dense Nets are very memory intensive

0:29:23.460,0:29:26.560
There are ways to manage this from time to time

0:29:26.560,0:29:28.400
You can have a regular convolution

0:29:28.400,0:29:30.300
that squishes your channels back down,

0:29:30.300,0:29:31.800
but they are memory intensive

0:29:31.800,0:29:35.160
but they have very few parameters

0:29:35.160,0:29:39.220
So for dealing with small datasets,

0:29:39.220,0:29:44.500
you should definitely experiment with dense blocks and dense Nets

0:29:44.500,0:29:49.000
They tend to work really well on small datasets

0:29:49.000,0:29:54.200
Also because it's possible to kind of keep those original input pixels all the way down the path

0:29:54.200,0:29:56.740
They work really well for segmentation. Right

0:29:56.740,0:29:58.660
because for segmentation, you know,

0:29:58.660,0:30:03.920
you kind of want to be able to reconstruct the original resolution of your picture

0:30:03.920,0:30:08.900
so having all of those original pixels still there is super helpful

0:30:08.980,0:30:19.320
So that's Resnet

0:30:19.320,0:30:22.340
and one of the main reasons other than fact that Resnets are awesome

0:30:22.340,0:30:23.600
to tell you about them

0:30:23.600,0:30:27.300
Is that these skipped connections are useful in other places as well

0:30:27.300,0:30:31.680
And it's particularly useful in other places and other ways of

0:30:31.680,0:30:33.980
designing architectures for segmentation

0:30:33.980,0:30:36.500
So in building this lesson

0:30:36.500,0:30:39.040
I always kind of,

0:30:39.040,0:30:42.080
I keep trying to take old papers and

0:30:42.080,0:30:45.640
saying like, imagining like, what would that person have done

0:30:45.640,0:30:48.440
if they had access to all the modern techniques we have now

0:30:48.440,0:30:51.280
and I try to kind of rebuild them in a more modern style.

0:30:51.280,0:30:55.680
So I've been really rebuilding this next architecture we are going to look at

0:30:55.680,0:30:58.720
called a Unet, in a more modern style recently

0:30:58.720,0:31:00.600
and got to the point now,

0:31:00.600,0:31:06.440
I keep showing you this semantic segmentation paper

0:31:06.440,0:31:10.560
with the state of the art for camvid, which was 91.5

0:31:10.560,0:31:17.560
this week I got it up to 94.1 using the architecture I'm about to show you.

0:31:17.560,0:31:20.400
So we just keep pushing this further and further and further

0:31:20.400,0:31:22.900
And it's really was all about

0:31:22.900,0:31:29.060
You know adding all of the modern tricks

0:31:29.060,0:31:30.940
Many of which I'll show you today

0:31:30.940,0:31:33.600
some of which we will see in part 2

0:31:33.600,0:31:37.500
so what we're going to do to get there

0:31:37.500,0:31:39.840
is we're going to use this Unet

0:31:39.840,0:31:41.240
So we've used a Unet before

0:31:41.240,0:31:43.800
I've improved it a bit since then

0:31:43.800,0:31:46.720
So we've used a Unet before

0:31:46.720,0:31:48.680
we used it when we did the camvid segmentation,

0:31:48.680,0:31:50.820
but we didn't understand what it was doing

0:31:50.820,0:31:56.500
So we're now in a position where we can understand what I was doing

0:31:56.500,0:32:00.480
And so the first thing we need to do

0:32:00.480,0:32:03.460
is kind of understand the basic idea of

0:32:03.460,0:32:06.000
how you can do segmentation

0:32:06.000,0:32:10.960
so if we go back to our camvid notebook

0:32:10.960,0:32:16.620
In our camvid notebook you'll remember that

0:32:16.620,0:32:19.500
basically what we were doing is we were taking these photos

0:32:19.500,0:32:23.640
and adding a class to every single pixel

0:32:23.640,0:32:28.580
and so we go data.show_batch for something which is a `SegmentationItemList`

0:32:28.580,0:32:34.280
It will automatically show you these color-coded pixels

0:32:34.280,0:32:42.860
So here's the thing like in order to color code this as a pedestrian

0:32:42.860,0:32:46.580
You know, but this as a bicyclist

0:32:46.580,0:32:48.900
It needs to know what it is

0:32:48.900,0:32:51.560
it needs to actually know that's what a pedestrian looks like

0:32:51.560,0:32:53.320
and it needs to know that's exactly where the pedestrian is

0:32:53.320,0:32:54.600
and this is the arm of the pedestrian

0:32:54.600,0:32:55.940
and not part of their shopping basket

0:32:55.940,0:33:01.400
It needs to really understand a lot about this picture to do this task

0:33:01.400,0:33:03.420
and it really does do this task

0:33:03.420,0:33:06.920
like when you looked at the results of our top model,

0:33:06.920,0:33:13.860
it's, You know, I can't see a single pixel by looking at it by eye

0:33:13.860,0:33:17.340
I know there's a few wrong but I can't see ones that are wrong, and say is that accurate

0:33:17.340,0:33:19.500
So how does it do that?

0:33:19.500,0:33:24.400
So the way that we're doing it to get these really really good results

0:33:24.400,0:33:28.900
is not surprisingly using pre-training

0:33:28.900,0:33:32.320
so we start with a ResNet 34

0:33:32.320,0:33:34.020
and you can see that

0:33:34.020,0:33:40.460
Here unet_learner(data, model.resnet34,

0:33:40.460,0:33:43.540
and if you don't say `pre-trained=False`

0:33:43.540,0:33:45.560
by default, you get `pre-trained=True`

0:33:45.560,0:33:46.900
because why not?

0:33:46.900,0:33:57.500
So we start with a Resnet 34 which starts with a big image

0:33:57.500,0:33:59.920
So in this case, this is from the unet paper now

0:33:59.920,0:34:05.040
Their images, they started with one channel by 572 by 572.

0:34:05.040,0:34:07.620
This is for medical imaging segmentation

0:34:07.620,0:34:10.400
so after your stride 2 conv

0:34:10.400,0:34:14.620
they're doubling the number of channels to 128

0:34:14.620,0:34:16.420
and they're having the size.

0:34:16.420,0:34:19.140
So they're now down to 280 by 280

0:34:19.140,0:34:23.120
in this original unet paper they didn't add any padding

0:34:23.120,0:34:26.180
so they lost the pixel on each side each time they did a conv

0:34:26.180,0:34:27.600
That's why you're losing these two

0:34:27.600,0:34:29.420
but so basically half the size

0:34:29.420,0:34:30.740
and then half the size

0:34:30.740,0:34:32.560
and then half the size

0:34:32.560,0:34:39.580
and then half the size until they're down to 28 by 28, with 1024 channels, right

0:34:39.580,0:34:45.200
So that's what the unet down sampling path.

0:34:45.200,0:34:46.800
This is called the down sampling path look like

0:34:46.800,0:34:50.080
ours is just a ResNet 34

0:34:50.080,0:34:51.740
so you can see it

0:34:51.740,0:34:54.820
Here learn.summary, right

0:34:54.820,0:35:00.800
This is literally a Resnet 34

0:35:00.800,0:35:03.600
so you can see that the size keeps having

0:35:03.600,0:35:07.020
channels keep going up, and so forth.

0:35:07.020,0:35:11.180
Okay, so eventually you've got down to a point

0:35:11.180,0:35:16.260
where if you use a unet architecture, it's 28 by 28, with 1,024 channels,

0:35:16.260,0:35:20.340
with the Resnet architecture, with a 224 pixel input,

0:35:20.340,0:35:24.220
it would be 512 channels by 7 by 7.

0:35:24.220,0:35:28.120
So it's a pretty small grid size on this feature map

0:35:28.120,0:35:31.980
Somehow we've got to end up with

0:35:31.980,0:35:36.100
something which is the same size as our original picture

0:35:36.100,0:35:38.540
So, how do we do that?

0:35:38.540,0:35:43.940
How do you do computation which increases the grid size?

0:35:43.940,0:35:48.840
Well, we don't have a way to do that in our current bag of tricks

0:35:48.840,0:35:53.520
we can use a stride 1 conv to do computation and keeps grid size

0:35:53.520,0:35:58.140
or a stride 2 conv to do computation and half the grid size

0:35:58.140,0:36:00.360
So how do we double the grid size?

0:36:00.360,0:36:06.840
We do a stride 1/2 conv, also known as a deconvolution

0:36:06.840,0:36:10.100
also known as a transposed convolution

0:36:10.100,0:36:13.800
There is a fantastic paper called

0:36:13.800,0:36:16.040
a guide to convolution arithmetic for deep learning

0:36:16.040,0:36:22.640
that shows a great picture of exactly what does a 3x3 kernel stride 1/2 conv look like

0:36:22.640,0:36:23.860
and it's literally this

0:36:23.860,0:36:26.040
if you have a 2x2 input

0:36:26.040,0:36:29.480
so the blue squares are the 2x2 input

0:36:29.480,0:36:34.260
you add not only 2 pixels of padding all around the outside

0:36:34.260,0:36:41.440
but you also add a pixel of padding between every pixel

0:36:41.440,0:36:48.940
And so now if we put this 3x3 kernel here and then here and then here

0:36:48.940,0:36:51.440
you see other 3x3 kernels just moving across it in the usual way

0:36:51.440,0:36:58.720
you will end up going from a 2x2 output to a 5x5 output,

0:36:58.720,0:37:01.760
so if you only added one pixel of padding around the outside

0:37:01.760,0:37:06.160
you would add up end up with a 3x3 output, right

0:37:06.160,0:37:09.780
oh sorry,  4x4

0:37:09.780,0:37:15.720
so this is how you can increase the resolution

0:37:15.720,0:37:26.100
This was the way people did it until maybe a year or two ago

0:37:26.100,0:37:30.640
There's another trick for improving things you find online

0:37:30.640,0:37:32.560
because this is actually a dumb way to do it

0:37:32.560,0:37:35.500
and it's kind of obvious it's a dumb way to do it for a couple of reasons

0:37:35.500,0:37:37.600
one is that like have a look at this

0:37:37.600,0:37:40.500
Nearly, all of those pixels are white.

0:37:40.500,0:37:41.780
They're nearly all zeros.

0:37:41.780,0:37:44.220
So like what a waste

0:37:44.220,0:37:45.220
what a waste of time

0:37:45.220,0:37:46.560
What a waste of computation

0:37:46.560,0:37:48.220
There's just nothing going on there.

0:37:48.220,0:37:57.320
also this one when you get down to like that 3x3 area

0:37:57.320,0:37:59.880
2 out of the 9 pixels are non-white

0:37:59.880,0:38:03.880
But this one 1 out of the 9 are non-white

0:38:03.880,0:38:04.540
So they're kind of like

0:38:04.540,0:38:08.320
there's different amounts of information going into different parts of your convolution

0:38:08.320,0:38:11.460
So like this, it just doesn't make any sense

0:38:11.460,0:38:14.660
to kind of throw away information like this

0:38:14.660,0:38:16.880
and kind of to do all this unnecessary computation

0:38:16.880,0:38:18.540
and have different parts of the convolution

0:38:18.540,0:38:21.400
having access to different amounts of information

0:38:21.400,0:38:26.040
So what people generally do nowadays

0:38:26.040,0:38:27.440
is something really simple

0:38:27.440,0:38:30.780
which is if you have a, let's say, a 2 by 2 input

0:38:30.780,0:38:37.880
with these are your pixel values a, b, c and d

0:38:37.880,0:38:40.400
and you want to create a 4 by 4

0:38:40.400,0:38:45.880
Why not just do this

0:38:45.880,0:38:48.580
a a a a

0:38:48.580,0:38:50.640
b b b b

0:38:50.640,0:38:52.500
c c c c

0:38:52.500,0:38:55.160
d d d d

0:38:55.160,0:38:59.160
So I've now upscaled from two by two to four by four

0:38:59.160,0:39:01.040
I haven't done any interesting computation,

0:39:01.040,0:39:06.180
but now on top of that I could just do a stride 1 convolution

0:39:06.180,0:39:08.680
and now I have done some computation,

0:39:08.680,0:39:14.100
so an upsample, this is called nearest neighbor interpolation

0:39:14.100,0:39:17.620
nearest neighbor (NN) interpolation

0:39:17.620,0:39:23.280
that's super fast, just nice

0:39:23.280,0:39:25.400
so you can do a nearest neighbor interpolation

0:39:25.400,0:39:27.240
and then a stride 1 conv

0:39:27.240,0:39:29.120
And now you've got some computation

0:39:29.120,0:39:32.400
which is actually kind of using, you know,

0:39:32.400,0:39:34.080
there's no zeros here

0:39:34.080,0:39:35.520
This is kind of nice

0:39:35.520,0:39:36.800
because it gets a mixture of A's and B's

0:39:36.800,0:39:40.400
which is kind of what you would want and so forth

0:39:40.400,0:39:43.560
Another approach is instead of using nearest neighbor interpolation.

0:39:43.560,0:39:46.120
You can use bilinear interpolation

0:39:46.120,0:39:50.120
Which basically means instead of copying a to all those different cells

0:39:50.120,0:39:53.460
you take a kind of a weighted average, if the cells around it

0:39:53.460,0:39:57.820
so for example if you were, you know

0:39:57.820,0:40:00.020
looking at what should go here

0:40:00.020,0:40:06.300
you would kind of go like, oh, it's about 3 a, 2 c, 1d and 2 b

0:40:06.300,0:40:07.560
and you could have taken the average

0:40:07.560,0:40:10.460
Not exactly, but roughly just a weighted average

0:40:10.460,0:40:14.660
bilinear interpolation, you'll find it you know all over the places

0:40:14.660,0:40:15.680
It's is pretty standard technique

0:40:15.680,0:40:20.340
anytime you look at a picture on your computer screen and change its size.

0:40:20.340,0:40:21.620
It's doing bilinear interpolation

0:40:21.620,0:40:23.960
so you can do that and then a strike one conv

0:40:23.960,0:40:28.100
So that was what people were using

0:40:28.100,0:40:30.500
that's what people still tend to use

0:40:30.500,0:40:34.400
That's as much as are going to teach you this part

0:40:34.400,0:40:39.140
in part two we will actually learn what the fastai library is actually doing behind the scenes

0:40:39.140,0:40:41.940
which is something called a pixel shuffle

0:40:41.940,0:40:44.300
Also known as sub pixel convolutions.

0:40:44.300,0:40:46.420
It's got not dramatically more complex,

0:40:46.420,0:40:48.400
but complex enough that I won't cover it today

0:40:48.400,0:40:49.900
This is the same basic idea.

0:40:49.900,0:40:51.940
All of these things is something which

0:40:51.940,0:40:53.820
is basically letting us do a convolution

0:40:53.820,0:40:56.420
that ends up with something that's twice the size

0:40:56.420,0:41:01.820
And so that gives us our upsampling path,

0:41:01.820,0:41:05.780
right so that lets us go from 28 by 28

0:41:05.780,0:41:08.000
To 54 by 54

0:41:08.000,0:41:10.540
and keep on doubling the size.

0:41:10.540,0:41:11.760
So that's good

0:41:11.760,0:41:17.320
And that was it

0:41:17.320,0:41:19.520
until Unet came along.

0:41:19.520,0:41:20.600
That's what people did

0:41:20.600,0:41:22.000
And it didn't work real well,

0:41:22.000,0:41:23.500
which is not surprising

0:41:23.500,0:41:26.800
because like in this 28 by 28 feature map

0:41:26.800,0:41:34.960
how the hell is it going to have enough information to reconstruct a 572 by 572 output space,

0:41:34.960,0:41:37.240
you know, that's a really tough ask

0:41:37.240,0:41:44.640
so you tended to end up with these things that lack fine detail

0:41:44.640,0:41:51.440
So what Olaf Ronneberger at el did

0:41:51.440,0:41:57.940
Was they said: Hey, let's add a skip connection , an identity connection and

0:41:57.940,0:42:02.340
Amazingly enough this was before Resnet existed.

0:42:02.340,0:42:07.440
So this was like a really big leap, really impressive

0:42:07.440,0:42:10.780
And so but rather than adding a skip connection,

0:42:10.780,0:42:13.620
that skipped every two nonvolutions

0:42:13.620,0:42:17.380
they added skip connections where these gray lines are

0:42:17.380,0:42:19.380
in other words, they added a skip connection

0:42:19.380,0:42:21.680
from the same part of the downsampling path

0:42:21.680,0:42:25.520
to the same-sized bit in the up sampling path

0:42:25.520,0:42:28.380
And they didn't add

0:42:28.380,0:42:31.020
that's why you can see the white and the blue next to each other.

0:42:31.020,0:42:32.740
They didn't add they concatenated

0:42:32.740,0:42:36.080
so basically these are like dense blocks,

0:42:36.080,0:42:38.740
right but the Skip connections are skipping over

0:42:38.740,0:42:41.800
larger and larger amounts of the architecture

0:42:41.800,0:42:44.980
So that over here

0:42:44.980,0:42:47.380
you've literally got

0:42:47.380,0:42:51.880
or nearly the input pixels themselves

0:42:51.880,0:42:55.700
coming into the computation of these last couple of layers

0:42:55.700,0:42:57.720
And so that's going to make it super handy

0:42:57.720,0:43:01.640
through resolving the fine details in these
segmentation tasks

0:43:01.640,0:43:04.060
because you've literally got all of the fine details

0:43:04.060,0:43:09.300
on the downside you don't have very many layers of computation going on here

0:43:09.300,0:43:11.220
just 4 right

0:43:11.220,0:43:14.040
so you better hope that by that stage

0:43:14.040,0:43:16.340
you've done all the computation necessary to figure out

0:43:16.340,0:43:18.480
is this the bicyclist or is this a pedestrian

0:43:18.480,0:43:21.620
but you can then add on top of that something saying like

0:43:21.620,0:43:24.940
is this, you know, is this exact pixel where their nose finishes

0:43:24.940,0:43:26.580
or is that the start of the tree

0:43:26.580,0:43:29.900
So that works out really well,

0:43:29.900,0:43:33.400
and that's a Unet

0:43:33.440,0:43:38.120
so this is the unet code from fastai

0:43:38.120,0:43:43.800
And the key thing that comes in is the encoder

0:43:43.800,0:43:50.740
the encoder refers to that part

0:43:50.740,0:43:55.060
in other words in our case a ResNet 34

0:43:55.060,0:44:01.000
In most cases they have this specific older style architecture,

0:44:01.000,0:44:01.820
but like I said

0:44:01.820,0:44:05.280
replace any older style architecture bits with the Resnet bits

0:44:05.280,0:44:06.680
and life improves

0:44:06.680,0:44:08.440
Particularly if they're pre trained

0:44:08.440,0:44:09.760
so that certainly happened for us.

0:44:09.760,0:44:11.340
So we start with our encoder

0:44:11.340,0:44:13.240
so our layers of our unet is an encoder

0:44:13.240,0:44:16.620
then batch norm,  then relu and then

0:44:16.620,0:44:20.720
middle_conv, which is just conv_layer, conv_layer,

0:44:20.720,0:44:25.620
remember, a conv_layer is a conv, relu, batch norm in fastai,

0:44:25.620,0:44:31.660
and so that middle_conv is these two extra steps here at the bottom.

0:44:31.660,0:44:34.240
Okay, just doing a little bit of computation

0:44:34.240,0:44:38.060
you know, it's kind of nice to add more layers of computation where you can

0:44:38.060,0:44:41.800
So encoder, batch norm, relu and then two convolutions

0:44:41.800,0:44:46.100
and then we enumerate through these indices

0:44:46.100,0:44:47.160
what are these indexes?

0:44:47.160,0:44:48.380
I haven't included the code

0:44:48.380,0:44:52.300
but these are basically we figure out what is the layer number

0:44:52.300,0:44:56.780
where each of these stride 2 convs occurs

0:44:56.780,0:44:59.120
and we just store it in an array of indexes

0:44:59.120,0:45:01.120
so then we can loop through that

0:45:01.120,0:45:06.480
and we can basically say for each one of those points, create a unet block

0:45:06.480,0:45:09.840
Telling us how many upsampling channels are

0:45:09.840,0:45:11.220
and how many cross connection

0:45:11.220,0:45:14.200
these things here are called cross connections

0:45:14.200,0:45:15.760
At least that's what I call them

0:45:15.760,0:45:21.240
So that's really the main works going on  in the unet block

0:45:21.240,0:45:24.600
As I said, there's quite a few tweaks we do

0:45:24.600,0:45:26.800
as well as the fact we use a much better encoder

0:45:26.800,0:45:31.300
We also use some tweaks in all of our upsampling using this pixel shuffle

0:45:31.300,0:45:33.500
we use another tweak called ICNR

0:45:33.500,0:45:36.620
and then another tweak which I just did in the last week

0:45:36.620,0:45:41.200
is to not just take the result of the convolutions and pass it across

0:45:41.200,0:45:45.580
but we actually grab the input pixels and make them another cross connection

0:45:45.580,0:45:47.720
That's what this last_cross is here.

0:45:47.720,0:45:53.520
You can see we're literally appending a res_block with the original inputs

0:45:53.520,0:45:55.340
so you can see our MergeLayer

0:45:55.340,0:45:59.020
So really all the works going on a `UnetBlock`

0:45:59.020,0:46:07.840
it has to store the the activations at each of these downsampling points and

0:46:07.840,0:46:12.620
The way to do that as we learn in the last lesson is with hooks

0:46:12.620,0:46:19.160
so we we put hooks into the Resnet 34 to store the activations each time.

0:46:19.160,0:46:21.120
There's a stride 2 conv

0:46:21.120,0:46:24.080
and so that's you can see here we we grab the hook.

0:46:24.080,0:46:29.480
Okay, and we grab the result of the stored value in that hook

0:46:29.480,0:46:31.840
and we literally just go torch.cat.

0:46:31.840,0:46:44.240
So we concatenate the upsampled convolution with the result of the hook

0:46:44.240,0:46:45.700
which we chuck through batch norm,

0:46:45.700,0:46:47.620
and then we do two convolutions to it

0:46:47.620,0:46:53.180
and actually, you know, something you could play with at home is pretty obvious here

0:46:53.180,0:46:55.540
anytime you see two convolutions like this

0:46:55.540,0:46:58.220
There's an obvious question is what if we used a resnet block instead

0:46:58.220,0:47:02.160
So you could try replacing those two convs with a resnet block.

0:47:02.160,0:47:04.720
You might find you get even better results

0:47:04.720,0:47:06.460
they're the kind of things I look for

0:47:06.460,0:47:08.580
when I look at an architecture is like

0:47:08.580,0:47:11.400
Oh two convs in a row probably should be a Resnet block

0:47:11.400,0:47:21.000
Okay, so that's unet and

0:47:21.000,0:47:25.060
You know, it's amazing to think, you know,

0:47:25.100,0:47:26.960
it preceded Resnet to preceded Densenet

0:47:26.960,0:47:33.460
It wasn't even published in a major machine learning venue.

0:47:33.460,0:47:35.060
It was actually published in Mekhi,

0:47:35.060,0:47:38.380
which is a specialized medical image computing conference

0:47:38.380,0:47:41.380
For years actually, you know,

0:47:41.380,0:47:44.680
it was largely unknown outside of the medical imaging community.

0:47:44.680,0:47:49.180
And actually what happened was kaggle competitions for segmentation

0:47:49.180,0:47:52.620
kept on being easily won by people using Unets

0:47:52.620,0:47:56.100
and that was the first time I saw it getting noticed outside the medical imaging community

0:47:56.100,0:48:00.260
and then gradually a few people in the academic machine learning community started noticing

0:48:00.260,0:48:03.560
and now everybody loves unet,

0:48:03.560,0:48:06.820
which I'm glad because It's just awesome

0:48:06.820,0:48:13.060
So, yeah, so, identity connections,

0:48:13.060,0:48:17.900
regardless of whether they're a plus style or a concat style

0:48:17.900,0:48:19.900
They're incredibly useful.

0:48:19.900,0:48:24.540
They can basically get us close to the state of the art on lots of important tasks

0:48:24.540,0:48:30.320
So I want to use them on another task now

0:48:30.320,0:48:35.200
and so the next task I want to look at is image restoration

0:48:35.200,0:48:40.340
So image restoration refers to starting with an image

0:48:40.340,0:48:43.060
at this time we're not going to create a segmentation mask,

0:48:43.060,0:48:46.940
but we're going to try and create a better image

0:48:46.940,0:48:49.160
And there's lots of kind of versions of better

0:48:49.160,0:48:50.360
there could be different image

0:48:50.360,0:48:53.640
So the kind of things we can do with this kind of image generation would be

0:48:53.640,0:48:56.500
take a low res image make it high res

0:48:56.500,0:48:59.100
Take a black-and-white image make a color

0:48:59.100,0:49:02.660
take an image where something's being cut out of it

0:49:02.660,0:49:04.720
and trying to replace the cutout thing

0:49:04.720,0:49:09.220
Take a photo and try and turn it into what looks like a line drawing

0:49:09.220,0:49:12.160
Take a photo and try and make it look like a Monet painting

0:49:12.160,0:49:15.300
These are all examples of kind of image to image generation tasks,

0:49:15.300,0:49:18.580
which you all know how to do after this part of class

0:49:18.580,0:49:26.360
So in our case we're going to try to do image restoration,

0:49:26.360,0:49:31.960
which is going to start with low resolution, poor quality JPEGs

0:49:31.960,0:49:34.540
with writing written over the top of them and

0:49:34.540,0:49:39.820
Get them to replace them with high resolution good quality pictures

0:49:39.820,0:49:42.500
in which the the text has been removed

0:49:42.500,0:49:46.940
Two questions, okay, let's go

0:49:46.940,0:49:56.200
Why do you concat before calling conv2 conv1, not after

0:49:56.200,0:50:03.140
Because if you did conv1, you know

0:50:03.140,0:50:05.000
If you did your convs before you concat,

0:50:05.000,0:50:11.200
then there's no way for the channels of the two parts to interact with each other

0:50:11.200,0:50:12.600
you don't get any, you know, so

0:50:12.600,0:50:17.560
Remember in a conv2d. It's really 3d, right?

0:50:17.560,0:50:20.840
It's moving across two dimensions,

0:50:20.840,0:50:25.240
but in each case it's doing a dot product

0:50:25.240,0:50:27.980
of all three dimensions of a rank three tensor

0:50:27.980,0:50:29.840
row by column by Channel

0:50:29.840,0:50:35.120
so, generally speaking, we want as much interaction as possible.

0:50:35.120,0:50:37.620
We want to say, you know,

0:50:37.620,0:50:40.600
this part of the down sampling path and this part of the up sampling path

0:50:40.600,0:50:42.080
if you look at the combination of them

0:50:42.080,0:50:43.140
you find these interesting things

0:50:43.140,0:50:45.560
so generally, you know,

0:50:45.560,0:50:49.560
you want to have as many interactions going on as possible

0:50:49.560,0:50:53.900
in each computation that you do

0:50:53.900,0:50:58.920
How does concatenating every layer together in a denseNet work

0:50:58.920,0:51:02.760
when the size of the image feature maps is changing through the layers

0:51:02.760,0:51:07.560
That's a great question

0:51:07.560,0:51:09.740
so if you have a stride 2 conv

0:51:09.740,0:51:12.640
You can't keep densenet in, right?

0:51:12.640,0:51:16.480
So that's what actually happens in a densenet

0:51:16.480,0:51:20.280
is you kind of go like, dense block growing , dense block growing,  dense block growing

0:51:20.280,0:51:21.780
So you're getting more and more channels

0:51:21.780,0:51:26.740
and then you do a stride 2 conv without a dense block

0:51:26.740,0:51:29.440
and so now it's kind of gone

0:51:29.440,0:51:31.980
and then you just do a few more dense blocks, and then it's gone

0:51:31.980,0:51:38.300
so in practice a dense block doesn't actually keep all the information all the way through

0:51:38.300,0:51:44.320
but just up into every one of these
stride 2 convs

0:51:44.320,0:51:48.160
and there's kind of various ways of doing these bottlenecking layers

0:51:48.160,0:51:51.600
where you're basically saying hey let's reset

0:51:51.600,0:51:54.040
also helps us keep memory under control

0:51:54.040,0:51:57.220
because at that point we can decide how many channels we actually want

0:51:57.220,0:51:59.400
Good questions. Thank you

0:51:59.400,0:52:02.020
right, so

0:52:02.020,0:52:09.140
In order to create something which can turn crappy images into nice images

0:52:09.140,0:52:13.120
We need a data set containing nice versions of images

0:52:13.120,0:52:14.780
and crappy versions of the same images

0:52:14.780,0:52:17.720
so the easiest way to do that is to start with some nice images

0:52:17.720,0:52:19.660
and crappify them.

0:52:19.660,0:52:23.660
And so the way to crappify them is to create a function called crappify

0:52:23.660,0:52:26.160
which contains your crappification logic

0:52:26.160,0:52:30.920
so, my crappification logic, you can pick your own,

0:52:30.920,0:52:33.500
is that I open up my nice image

0:52:33.500,0:52:36.960
I resize it to be really small, 96 by 96 pixels

0:52:36.960,0:52:40.260
with bilinear interpolation

0:52:40.260,0:52:43.840
I then pick a random number between 10 and 70

0:52:43.840,0:52:50.320
I draw that number into my image at some random location

0:52:50.320,0:52:53.400
And then I save that image

0:52:53.400,0:52:56.560
with a JPEG quality of that random number

0:52:56.560,0:53:01.660
and a JPEG quality of 10 is like absolute rubbish

0:53:01.660,0:53:04.900
a JPEG quality of 70 is not bad at all.

0:53:04.900,0:53:11.820
Okay, so I end up with high quality images, low quality images

0:53:11.820,0:53:14.980
look, something like these

0:53:14.980,0:53:18.800
and so you can see this one, you know, there's the image

0:53:18.800,0:53:20.480
and this is after transformation.

0:53:20.480,0:53:22.260
So that's why it's been flipped

0:53:22.260,0:53:23.640
and you won't always see the image

0:53:23.640,0:53:26.180
because we're zooming into them.

0:53:26.180,0:53:29.220
So a lot of the time the image is cropped out

0:53:29.220,0:53:31.340
So yeah

0:53:31.340,0:53:34.700
It's trying to figure out how to take this incredibly jpg artifactory thing

0:53:34.700,0:53:38.040
with text written over the top and turn it into this

0:53:38.040,0:53:40.860
So I'm using the Oxford pets dataset again

0:53:40.860,0:53:42.720
the same one we used in lesson 1

0:53:42.720,0:53:45.960
So there's nothing more high qualities and pictures of dogs and cats.

0:53:45.960,0:53:47.180
I think we can all agree with that

0:53:47.180,0:53:51.440
The crappification process can take a while

0:53:51.440,0:53:55.020
but fastai has a function called parallel

0:53:55.020,0:53:57.980
And if you pass parallel a function name

0:53:57.980,0:54:01.000
and a list of things to run that function on

0:54:01.000,0:54:04.060
It will run that function on them all in parallel.

0:54:04.060,0:54:07.800
So this actually can run pretty quickly

0:54:07.800,0:54:13.600
The way you write this function

0:54:13.600,0:54:17.780
is where you get to do all the interesting stuff in this assignment

0:54:17.780,0:54:21.160
Try and think of an interesting crappifcation,

0:54:21.160,0:54:23.240
which does something that you want to do, right?

0:54:23.240,0:54:26.980
So if you want to you know colorize black-and-white images

0:54:26.980,0:54:28.600
You would replace it with black-and-white

0:54:28.600,0:54:34.020
if you want something which can you know take like large cut-out blocks of image

0:54:34.020,0:54:37.020
and replace them with kind of hallucinated image,

0:54:37.020,0:54:39.760
you know, add a big black box to these

0:54:39.760,0:54:44.060
If you want something which can kind of take old families photos scans

0:54:44.060,0:54:46.180
that have been like folded up and have crinkles in

0:54:46.180,0:54:51.220
try and find a way of like adding dust prints and crinkles and so forth right

0:54:51.220,0:54:58.080
and anything that you don't include in crappify your model won't learn to fix

0:54:58.080,0:55:00.800
Because every time it sees that in your photos

0:55:00.800,0:55:02.120
the input and output will be the same

0:55:02.120,0:55:05.260
so it won't consider that to be something worthy of fixing

0:55:05.260,0:55:08.000
[end of crappification] okay, so

0:55:08.000,0:55:11.280
[create model to turn crappy images to good ones]
So, we now want to create a model

0:55:11.280,0:55:16.320
which can take an input photo that looks like that

0:55:16.320,0:55:19.140
and outputs something that looks like that

0:55:19.140,0:55:22.580
so obviously what we want to do is to use a unet

0:55:22.580,0:55:25.560
because we already know that unets can do exactly that kind of thing,

0:55:25.560,0:55:29.440
and we just need to pass the unet that data.

0:55:29.440,0:55:36.360
Okay. So our data is just literally the file names of each of those two folders

0:55:36.360,0:55:38.720
Do some transforms

0:55:38.720,0:55:40.580
databunch, normalize

0:55:40.580,0:55:44.600
and use imagenet stats because we're going to use a pretrained model

0:55:44.600,0:55:46.760
Why are we using a pretrained model?

0:55:46.760,0:55:49.740
Well because like if you're going to get rid of this 46

0:55:49.740,0:55:52.840
You need to know what probably was there

0:55:52.840,0:55:54.520
and to know what probably was there.

0:55:54.520,0:55:55.740
You need to know what this is a picture of

0:55:55.740,0:55:57.080
right because otherwise,

0:55:57.080,0:55:58.660
how can you possibly know what it ought to look like?

0:55:58.660,0:56:03.620
so, you know, let's use a pretrained model that knows about these kinds of things

0:56:03.620,0:56:06.700
So we create our unet with that data.

0:56:06.700,0:56:09.480
The architecture is ResNet 34

0:56:09.480,0:56:16.220
These three things are important and interesting and useful,

0:56:16.220,0:56:17.620
but I'm going to leave them to part two

0:56:17.620,0:56:20.560
Okay, for now, you should always include them

0:56:20.560,0:56:24.360
when you use a unet for this kind of problem

0:56:24.360,0:56:28.400
And So now we're going to add,

0:56:28.400,0:56:29.820
this whole thing I'm calling it a generator.

0:56:29.820,0:56:31.100
Okay, it's going to generate

0:56:31.100,0:56:32.700
this is generative modeling

0:56:32.700,0:56:35.840
They're kind of... There's not a really formal definition,

0:56:35.840,0:56:36.980
but it's basically something

0:56:36.980,0:56:41.160
where the thing we're outputting is like a real object in this case an image.

0:56:41.160,0:56:42.360
It's not just a number

0:56:42.360,0:56:46.540
So we're going to create a generator learner,

0:56:46.540,0:56:48.360
which is this unet learner

0:56:48.360,0:56:50.160
And then we can fit

0:56:50.160,0:56:53.380
We're using MSE loss, right

0:56:53.380,0:56:55.280
So in other words, what's the mean squared error

0:56:55.280,0:56:57.900
between the actual pixel value that it should be

0:56:57.900,0:56:59.140
and the pixel value that we predicted

0:56:59.140,0:57:03.180
MSE lost normally expects two vectors

0:57:03.180,0:57:05.520
In our case, we have two images

0:57:05.520,0:57:08.800
So we have a version called MSELossFlat

0:57:08.800,0:57:12.220
which simply flattens out those images into a big long vector

0:57:12.220,0:57:15.540
There's never any reason not to use this

0:57:15.540,0:57:17.620
Even if you do have a vector, it works fine.

0:57:17.620,0:57:19.600
If you don't have a work vector, it'll also work fine

0:57:19.600,0:57:25.180
so we're already you know down to 0.05 mean squared error on the pixel values,

0:57:25.180,0:57:28.340
which is not bad after 1:35 minutes

0:57:28.340,0:57:31.620
like all things in fastai pretty much

0:57:31.620,0:57:34.440
because we're doing transfer learning by default

0:57:34.440,0:57:39.620
when you create this,  it'll freeze the pre-trained part

0:57:39.620,0:57:46.100
and the pre-trained part of a unet is this part, the downsampling part.

0:57:46.100,0:57:46.900
That's where the resnet is.

0:57:46.900,0:57:51.380
So let's unfreeze that and train a little more

0:57:51.380,0:57:55.160
and look at that

0:57:55.160,0:58:00.800
so with you know,  three minutes or four minutes of training

0:58:00.800,0:58:06.600
we've got something which is basically doing a perfect job of removing numbers

0:58:06.600,0:58:10.620
It's certainly not doing a good job of up sampling

0:58:10.620,0:58:15.380
But it's definitely doing a nice, you know,

0:58:15.380,0:58:16.440
sometimes when it removes a number

0:58:16.440,0:58:18.220
it maybe leaves a little bit of JPEG artifact

0:58:18.220,0:58:21.080
but it certainly doing something pretty useful

0:58:21.080,0:58:26.120
and so if all we wanted to do was kind of watermark removal, it would be finished

0:58:26.120,0:58:29.000
[How to do upsampling better?]
We're not finished

0:58:29.000,0:58:32.360
because we actually want this thing to look more like this thing

0:58:32.360,0:58:35.960
So how we got to do that

0:58:35.960,0:58:43.000
The problem, the reason that we're not making as much progress with that as we'd like,

0:58:43.000,0:58:46.960
is that our loss function doesn't really describe what we want

0:58:46.960,0:58:52.840
because actually the the mean squared error between the pixels of this and this

0:58:52.840,0:58:54.060
is actually very small right

0:58:54.060,0:58:56.220
if you actually think about it

0:58:56.220,0:58:58.880
most of the pixels are very nearly the right color,

0:58:58.880,0:59:01.980
but we're missing the texture of the pillow

0:59:01.980,0:59:05.520
and we're missing the eyeballs entirely pretty much right

0:59:05.520,0:59:08.520
and we're missing the texture of the fur right,

0:59:08.520,0:59:14.300
so we want some loss function that does a better job than

0:59:14.300,0:59:17.920
pixel mean squared error loss of saying like

0:59:17.920,0:59:21.920
is this a good quality picture of this thing

0:59:21.920,0:59:29.640
So there's a fairly general way of answering that question

0:59:29.640,0:59:35.460
and it's something called a generative adversarial Network or GAN

0:59:35.460,0:59:41.820
a GAN tries to solve this problem by using a loss function

0:59:41.820,0:59:45.440
Which actually calls another model

0:59:45.440,0:59:47.500
and let me describe it to you

0:59:47.500,0:59:55.160
So we've got our crappy image right

0:59:55.160,0:59:59.360
and we've already created a generator it's not a great one, but it's not terrible right

0:59:59.360,1:00:05.160
and that's creating predictions like this

1:00:05.160,1:00:11.040
We have a high-res image like that

1:00:11.040,1:00:17.840
and we can compare the high-res image to the prediction with pixel MSE

1:00:17.840,1:00:22.840
Okay, we could also train another model

1:00:22.840,1:00:27.360
which we would variably call variously call either the discriminator or The Critic

1:00:27.360,1:00:28.780
they both mean the same thing

1:00:28.780,1:00:30.200
I'll call it a critic

1:00:30.200,1:00:34.100
We could try and build a binary classification model

1:00:34.100,1:00:38.360
that takes all the pairs of the generated image

1:00:38.360,1:00:40.120
and the real high-res image

1:00:40.120,1:00:45.240
and tries to classify, learn to classify which is which

1:00:45.240,1:00:48.640
you know, so look at some picture and say like

1:00:48.640,1:00:52.760
hey what do you think, is that a high-res cat or is that a generated cat?

1:00:52.760,1:00:55.160
How about this one? Is that a high-res cat or a generated cat?

1:00:55.160,1:01:01.020
So just a regular standard binary cross-entropy classifier

1:01:01.020,1:01:03.740
so we know how to do that already.

1:01:03.740,1:01:05.900
So if we had one of those

1:01:05.900,1:01:11.220
we could now train we could fine tune the generator and

1:01:11.220,1:01:14.180
Rather than using pixel MSE as the loss

1:01:14.180,1:01:18.820
The loss could be how good are we at fooling the critic

1:01:18.820,1:01:26.420
So can we create generated images that the critic thinks are real

1:01:26.420,1:01:30.760
So that would be a very good plan, right?

1:01:30.760,1:01:32.080
because if it can do that,

1:01:32.080,1:01:35.660
if the loss function is am I fooling the critic right

1:01:35.660,1:01:39.660
Then it's going to learn to create images

1:01:39.660,1:01:42.220
Which the critic can't tell whether they're real or fake

1:01:42.220,1:01:47.040
So we could do that for a while, train a few batches

1:01:47.120,1:01:52.240
But the critic isn't that great

1:01:52.240,1:01:55.100
The reason the critic is that isn't that great is because it wasn't that hard

1:01:55.100,1:01:58.040
like these images are really shitty, so it's really easy to tell the difference

1:01:58.040,1:02:01.860
Alright, so after we train the generator a little bit more,

1:02:01.860,1:02:03.960
using the critic as the loss function

1:02:03.960,1:02:06.940
The generators going to get really good.

1:02:06.940,1:02:08.420
They're fooling the critic

1:02:08.420,1:02:11.320
So now we're going to stop training the generator

1:02:11.320,1:02:16.800
and we'll train the critic some more on these newly generated images

1:02:16.800,1:02:18.080
so now that the generators better

1:02:18.080,1:02:22.660
it's now a tougher task for the critic to decide which is real and which is fake

1:02:22.660,1:02:24.580
so we're trained that a little bit more

1:02:24.580,1:02:26.880
and then once we've done that

1:02:26.880,1:02:29.000
and the critics now pretty good at recognizing

1:02:29.000,1:02:31.960
the difference between the better generated images and the originals

1:02:31.960,1:02:35.480
Well, we'll go back and we'll fine-tune the generator some more

1:02:35.480,1:02:39.720
Using the better discriminator the better critic as the loss function

1:02:39.720,1:02:42.560
and so we'll just go ping pong ping pong backwards and forwards

1:02:42.560,1:02:49.000
That's GAN. Well, that's our version of GAN.

1:02:49.000,1:02:52.100
I don't know if anybody's written this before

1:02:52.100,1:02:54.480
we've created a new version of GAN,

1:02:54.520,1:02:57.540
which is kind of a lot like the original Gans

1:02:57.540,1:03:00.920
but we have this this neat trick where we pretrain the generator

1:03:00.920,1:03:02.300
and we pretrain the critic

1:03:02.300,1:03:07.360
I mean GANs have been kind of in the news a lot,

1:03:07.360,1:03:09.220
they're pretty fashionable tool.

1:03:09.220,1:03:14.000
And if you've seen them you may have heard that they're a real pain to train

1:03:14.000,1:03:19.720
But it turns out we realized that really most of the pain of training them was at the start

1:03:19.720,1:03:21.800
if you don't have a pretrained generator

1:03:21.800,1:03:23.580
and you don't have a pretrained critic,

1:03:23.580,1:03:27.740
then it's basically the blind leading the blind right?

1:03:27.740,1:03:29.020
You're basically like the critics

1:03:29.020,1:03:32.000
Well, the generators trying to generate something which fools the critic

1:03:32.000,1:03:33.480
but the critic doesn't know anything at all

1:03:33.480,1:03:35.100
So it's basically got nothing to do

1:03:35.100,1:03:38.860
and then the critics kind of try to decide whether the generated images are real or not

1:03:38.860,1:03:40.500
And that gets really obvious.

1:03:40.500,1:03:46.120
and so they kind of like don't go anywhere for ages

1:03:46.120,1:03:48.600
and then once they finally start picking up steam

1:03:48.600,1:03:50.900
they go along pretty quickly.

1:03:50.900,1:03:55.400
So If you can find a way to generate things without using a GAN,

1:03:55.400,1:03:57.800
like mean squared pixel loss

1:03:57.800,1:04:00.260
and discriminate things without using a GAN

1:04:00.260,1:04:02.940
like predict on that first generator,

1:04:02.940,1:04:04.280
you can make a lot of progress.

1:04:04.280,1:04:07.120
So let's create the critic,

1:04:07.120,1:04:13.820
so to create just a totally standard fastai binary classification model

1:04:13.820,1:04:17.520
we need two folders, one folders contain high-res images,

1:04:17.520,1:04:20.180
one folder containing generated images

1:04:20.180,1:04:22.380
we already have the folder with high-res images.

1:04:22.380,1:04:25.020
So we just have to save our generated images

1:04:25.020,1:04:29.380
So here's a teeny tiny bit of code that does that

1:04:29.380,1:04:32.620
We're going to create a directory called image_gen

1:04:32.620,1:04:35.940
Pop it into a variable called path_gen

1:04:35.940,1:04:40.800
We created a little function called save_preds that takes a dataloader

1:04:40.800,1:04:43.620
and we're going to grab all of the file names

1:04:43.620,1:04:46.380
because remember that in an ItemList

1:04:46.380,1:04:48.060
the  `.items` contains the file names,

1:04:48.060,1:04:50.220
if it's an ImageItemList

1:04:50.220,1:04:54.160
So here's the file names in that dataloader's dataset

1:04:54.160,1:04:57.800
and so now let's go through each batch of the dataloader

1:04:57.800,1:05:03.040
And let's grab a batch of predictions for that batch

1:05:03.040,1:05:11.720
and then `reconstruct=true` means it's actually going to create fastai Image objects for each thing in the batch

1:05:11.720,1:05:15.580
and so then we'll go through each of those predictions and save them

1:05:15.580,1:05:20.320
and the name will save it with is the name of the original file,

1:05:20.320,1:05:22.740
but we're going to pop it into our new directory

1:05:22.740,1:05:26.360
so, that's it.

1:05:26.360,1:05:28.140
That's how you save predictions and

1:05:28.140,1:05:31.640
so you can see I'm kind of increasingly

1:05:31.640,1:05:34.640
not just using the stuff that already in the fastai library,

1:05:34.640,1:05:37.280
but try to show you how to write stuff yourself,

1:05:37.280,1:05:41.740
right and generally doesn't require heaps of code to do that

1:05:41.740,1:05:43.520
and so if you come back for part two,

1:05:43.520,1:05:47.580
this is what, you know, lots of part 2 are kind of like

1:05:47.580,1:05:49.560
here's how you use things inside the library

1:05:49.560,1:05:52.300
and of course, here's how we wrote the library

1:05:52.300,1:05:55.380
so increasingly writing our own code

1:05:55.380,1:05:58.960
okay, so save those predictions

1:05:58.960,1:06:03.260
and then let's just do a `PIL.Image.open` on the first one

1:06:03.260,1:06:05.340
and Yep, there it is.

1:06:05.340,1:06:07.940
Okay, so this is an example of a generated image.

1:06:07.940,1:06:11.600
So now I can train a critic in the usual way

1:06:11.600,1:06:18.240
It's really annoying to have to restart Jupyter notebook to reclaim GPU memory

1:06:18.240,1:06:19.980
So one easy way to handle this is

1:06:19.980,1:06:24.040
if you just set something that you knew was using a lot of GPU to none

1:06:24.040,1:06:27.640
Like this learner and then just go `gc.collect`

1:06:27.640,1:06:32.280
that tells Python to do a memory garbage collection

1:06:32.280,1:06:39.700
and after that you'll generally be fine, you'll be able to use all of your GPU remember again

1:06:39.700,1:06:44.480
If you're using nvidia SMI to actually look at your GPU memory

1:06:44.480,1:06:50.200
You won't see it clear because pytorch still has a kind of allocated cache

1:06:50.200,1:06:51.820
but it makes it available

1:06:51.820,1:06:55.060
so you should find this is how you can avoid restarting your notebook

1:06:55.060,1:06:57.860
Okay, so we're going to create a critic.

1:06:57.860,1:07:01.360
It's just an ImageItemList.from_folder in the totally usual way

1:07:01.360,1:07:07.020
And the classes will be the image_gen and images

1:07:07.020,1:07:09.100
We'll do a random split

1:07:09.100,1:07:12.680
because we want to know how well we're doing with a critic to have a validation set

1:07:12.680,1:07:15.160
We just label it from folder in the usual way.

1:07:15.160,1:07:16.780
get some transforms

1:07:16.780,1:07:18.360
databunch, normalize

1:07:18.360,1:07:20.800
So it's a totally standard object classifier

1:07:20.800,1:07:28.380
Okay, so we've got a totally standard classifier

1:07:28.380,1:07:31.740
so Here's what some of it looks like

1:07:31.740,1:07:36.560
so here's one from the real images, real images, generated images, generated images

1:07:36.560,1:07:40.620
okay, so it's going to try and figure out which class is which

1:07:40.620,1:07:49.160
Okay, so we're going to use binary cross entropy as usual

1:07:49.160,1:07:57.960
However, we're not going to use a resnet here

1:07:57.960,1:08:02.280
and the reason we'll get into in more detail in part two,

1:08:02.280,1:08:05.520
but basically when you're doing a GAN

1:08:05.520,1:08:09.440
You need to be particularly careful

1:08:09.440,1:08:16.640
that the generator and the critic can't kind of both push in the same direction

1:08:16.640,1:08:19.160
and like increase the weights out of control

1:08:19.160,1:08:21.940
So we have to use them in called spectral normalization

1:08:22.020,1:08:24.320
to make GANs work nowadays

1:08:24.320,1:08:26.580
Well learn about that in part two

1:08:26.580,1:08:29.260
so anyway, if you say Gann critic,

1:08:29.260,1:08:34.820
fastai will give you a binary classifier suitable GANs.

1:08:34.820,1:08:37.940
I strongly suspect we probably can use a Resnet here

1:08:37.940,1:08:40.740
We just have to create a pretrained ResNet with spectral norm.

1:08:40.740,1:08:42.340
Hope to do that pretty soon

1:08:42.340,1:08:43.540
We'll see how we go.

1:08:43.540,1:08:46.640
But as of now, this is kind of the best approach

1:08:46.640,1:08:49.600
There's this thing called GAN critic

1:08:49.600,1:09:01.460
A GAN critic uses a slightly different way of averaging the different parts of the image

1:09:01.560,1:09:02.680
when it does the loss.

1:09:02.680,1:09:05.360
So anytime you're doing a GAN at the moment

1:09:05.360,1:09:07.940
You have to wrap your loss function with adaptive loss

1:09:07.940,1:09:10.340
again we'll look at the details in part two

1:09:10.340,1:09:13.220
for now just know this is what you have to do and it'll work

1:09:13.220,1:09:16.960
So other than that, slightly odd loss function

1:09:16.960,1:09:18.660
and that slightly odd architecture

1:09:18.660,1:09:20.020
Everything else is the same

1:09:20.020,1:09:22.380
we can call that to create our critic

1:09:22.380,1:09:27.580
Because we have this slightly different architecture and slightly different loss function

1:09:27.580,1:09:29.540
We did a slightly different metric

1:09:29.540,1:09:33.660
This is the equivalent GAN version of accuracy for critics

1:09:33.660,1:09:35.140
and then we can train it

1:09:35.140,1:09:37.600
and you can see it's 98% accurate

1:09:37.600,1:09:43.780
at recognizing that kind of crappy thing from that kind of nice thing

1:09:43.780,1:09:47.120
But of course we don't see the numbers here anymore, right?

1:09:47.120,1:09:48.880
Because these are the generated images

1:09:48.880,1:09:51.680
the generator already knows how to get rid of those numbers that are written on top

1:09:51.680,1:09:57.580
Okay, so let's finish up this GAN

1:09:57.580,1:10:03.300
Now that we have pretrained the generator and pretrained the critic

1:10:03.300,1:10:07.720
we now need to get it to kind of ping pong between training a little bit of each

1:10:07.720,1:10:11.820
and the amount of time you spend on each of those things

1:10:11.820,1:10:17.000
and the learning rates you use is still a little bit on the fuzzy side.

1:10:17.000,1:10:22.920
So we've created a GAN learner for you

1:10:22.920,1:10:26.920
Which you just pass in your generator and your critic,

1:10:26.920,1:10:30.760
which we've just simply loaded here from the ones we just trained

1:10:30.760,1:10:37.340
And it will go ahead and when you go learned up fit it will do that for you

1:10:37.340,1:10:39.860
It'll figure out how much time to train the generator

1:10:39.860,1:10:42.280
and then when to switch to training the discriminator, the critic

1:10:42.280,1:10:43.480
it'll go back on and forward

1:10:43.480,1:10:48.520
these weights here is, that what we actually do

1:10:48.520,1:10:51.500
is we don't only use the critic as the loss function

1:10:51.500,1:10:53.640
If we only use the critic as a loss function

1:10:53.640,1:11:00.660
the GAN could get very good at creating pictures that look like real pictures,

1:11:00.660,1:11:05.420
but they actually have nothing to do with the original photo at all

1:11:05.420,1:11:09.480
So we actually add together the pixel loss and the critic loss

1:11:09.480,1:11:14.760
and so those two losses are kind of on different scales.

1:11:14.760,1:11:18.060
So we multiply the pixel loss by

1:11:18.060,1:11:21.000
something between about 50 and about 200

1:11:21.000,1:11:24.580
again something in that range generally works pretty well

1:11:24.580,1:11:28.700
Something else with GANs

1:11:28.700,1:11:33.120
GANs hate momentum when you're training them

1:11:33.120,1:11:35.600
It kind of doesn't make sense to train them with the mentum

1:11:35.600,1:11:37.780
because you keep switching between generator and critic

1:11:37.780,1:11:38.840
so it's kind of tough

1:11:38.840,1:11:40.380
Maybe there are ways to use momentum,

1:11:40.380,1:11:41.760
but I'm not sure anybody's figured it out.

1:11:41.760,1:11:43.820
So, this number here

1:11:43.820,1:11:45.640
When you create an atom optimizer

1:11:45.640,1:11:47.180
is where the momentum goes

1:11:47.180,1:11:48.760
so you should set that to zero.

1:11:48.760,1:11:52.000
So anyway, if you're doing GANs, use these hyper parameters

1:11:52.000,1:11:53.400
It should work

1:11:53.400,1:12:01.840
Okay, so that's what GAN learner does

1:12:01.840,1:12:03.440
and so then you can go fit

1:12:03.440,1:12:05.080
and It trains for a while

1:12:05.080,1:12:08.420
and one of the tough things about Gans,

1:12:08.420,1:12:13.860
is that these loss numbers,  they're meaningless.

1:12:13.860,1:12:15.500
You can't expect them to go down

1:12:15.500,1:12:18.360
right because as the generator gets better

1:12:18.360,1:12:22.560
It gets harder for the discriminator the critic

1:12:22.560,1:12:25.160
and then as the credit gets better, It's harder for the generator.

1:12:25.160,1:12:28.680
So the numbers should stay about the same

1:12:28.680,1:12:33.620
Okay, so that's one of the tough things about training ganz

1:12:33.620,1:12:36.900
is it's kind of hard to know how are they doing

1:12:36.900,1:12:39.020
So the only way to know how are they doing

1:12:39.020,1:12:42.220
is to actually take a look at the results from time to time

1:12:42.220,1:12:47.120
and so if you put show_img=true here

1:12:47.120,1:12:49.600
It'll actually print out a sample after every epoch

1:12:49.600,1:12:51.480
I haven't put that in the notebook

1:12:51.480,1:12:53.960
because it makes it too big for the repo,

1:12:53.960,1:12:55.280
but you can try that

1:12:55.280,1:12:57.040
so I've just put the results at the bottom

1:12:57.040,1:13:04.380
Here it is, so, pretty beautiful, I would say

1:13:04.380,1:13:08.480
we already knew how to get rid of the numbers

1:13:08.480,1:13:11.520
but we're now don't really have that kind of artifact where it used to be

1:13:11.520,1:13:14.640
and it's definitely sharpening up

1:13:14.640,1:13:17.320
this little kitty cat quite nicely

1:13:17.320,1:13:23.460
It's not great always

1:13:23.460,1:13:28.120
like there's some weird kind of noise going on here

1:13:28.120,1:13:32.320
Certainly a lot better than the horrible original

1:13:32.320,1:13:35.920
like this is a tough job to turn that into that

1:13:35.920,1:13:40.320
but there are some really obvious problems

1:13:40.320,1:13:44.600
like here these things ought to be eyeballs and they're not

1:13:44.600,1:13:47.560
So why aren't they

1:13:47.560,1:13:51.400
well our critic doesn't know anything about eyeballs

1:13:51.400,1:13:56.200
and even if it did it wouldn't know that eyeballs are particularly important,

1:13:56.200,1:13:57.560
you know, we care about eyes

1:13:57.560,1:14:02.540
like when we see a cat with that eyes it's a lot less cute

1:14:02.540,1:14:08.740
I mean I'm more of a dog person, but you know

1:14:08.740,1:14:17.020
It just doesn't know that this is a feature that matters

1:14:17.020,1:14:21.120
Particularly because the critic, remember it is not a pretrained network

1:14:21.120,1:14:25.900
So I kind of suspect that if we replace the critic with a pre trained network

1:14:25.900,1:14:28.740
that's been pretrained on imagenet but is also compatible with GANs

1:14:28.740,1:14:30.440
It might do a better job here

1:14:30.440,1:14:36.020
but it's definitely a shortcoming of this approach

1:14:36.020,1:14:37.960
So I'm going to have a break

1:14:37.960,1:14:41.880
Oh question first and then we'll have a break

1:14:41.880,1:14:47.040
and then after the break I will show you how to find the cat's eyeballs again

1:14:47.040,1:14:52.000
For what kind of problems do you not want to use unet?

1:14:52.000,1:15:01.680
Well unet, so, for when the the size of your output

1:15:01.680,1:15:06.060
you know is similar to the size of your input

1:15:06.060,1:15:08.800
and kind of aligned with it.

1:15:08.800,1:15:11.700
There's no point kind of having cross connections

1:15:11.700,1:15:16.200
if that level of spatial resolution in the output isn't necessary or useful,

1:15:16.200,1:15:19.660
so Yeah, any kind of generative modeling

1:15:19.660,1:15:23.180
and you know segmentation is kind of generative modeling, right?

1:15:23.180,1:15:28.060
it's generating a picture which is a mask of the original objects

1:15:28.060,1:15:34.980
Yeah, so probably anything where you want that kind of resolution of the output

1:15:34.980,1:15:38.920
to be of the same kind of fidelity as a resolution of the input

1:15:38.920,1:15:41.480
Obviously something like a classifier makes no sense, right

1:15:41.480,1:15:46.580
in a classifier you just want the down sampling path

1:15:46.580,1:15:48.840
Because at the end you just want a single number

1:15:48.840,1:15:53.160
Which is like, is it a dog or a cat or what kind of pet is it or whatever?

1:15:53.160,1:15:58.860
Great. Okay. So let's get back together at five past eight

1:15:58.860,1:16:03.280
Just before we leave GANs, I just mentioned there's another Notebook

1:16:03.280,1:16:04.540
you might be interested in looking at

1:16:04.540,1:16:07.760
Which is lesson 7  WGAN

1:16:07.760,1:16:12.800
When GANs started a few years ago

1:16:12.800,1:16:19.460
people generally use them to kind of create images out of thin air

1:16:19.460,1:16:24.520
Which I personally don't think is a particularly useful or interesting thing to do

1:16:24.520,1:16:29.900
But it's kind of a good, I don't know, it's a good research exercise I guess

1:16:29.900,1:16:33.360
so we implemented this WGAN paper,

1:16:33.360,1:16:38.600
which is kind of really the first one to do a somewhat adequate job somewhat easily

1:16:38.600,1:16:41.700
And so you can see how to do that with the fastai library

1:16:41.700,1:16:44.300
it's kind of interesting because

1:16:44.300,1:16:50.040
The dataset we use is this lsun bedrooms dataset

1:16:50.040,1:16:53.180
which we've provided in our URLs

1:16:53.180,1:16:58.040
which just as you can see has bedrooms, lots and lots and lots of bedrooms

1:16:58.040,1:17:05.820
and the approach you'll see in the pros here

1:17:05.820,1:17:09.220
that Sylvain wrote, the approach that we use in this case

1:17:09.220,1:17:13.860
is to just say can we create a bedroom

1:17:13.860,1:17:15.840
so what we actually do,

1:17:15.840,1:17:23.340
is that the input to the generator isn't an image that we clean up

1:17:23.340,1:17:26.620
We actually feed to the generator random noise

1:17:26.620,1:17:31.300
and so then the generators task is can you turn random noise

1:17:31.300,1:17:36.640
Into something which the critic can't tell the difference between that output and a real bedroom

1:17:36.640,1:17:41.100
And so we're not doing any pretraining here

1:17:41.100,1:17:43.160
or any of the stuff that makes this kind of fast and easy

1:17:47.900,1:17:50.160
So this is a very traditional approach,

1:17:50.160,1:17:52.140
but you can still see, you still just go,

1:17:52.140,1:17:55.340
You know, gan_learner and there's actually a wgan version

1:17:55.340,1:17:58.440
which is, you know this kind of older style approach

1:17:58.440,1:18:01.000
But you just passing the data in the generator and the critic in the usual way

1:18:01.000,1:18:04.580
and you call fit

1:18:04.580,1:18:07.960
and you'll see in this case, we have show_image on

1:18:07.960,1:18:12.480
you know, after epoch one, It's not creating great bedrooms or two or three

1:18:12.480,1:18:15.620
and you can really see that in the early days of these kinds of GANs,

1:18:15.620,1:18:16.880
it doesn't do a great job of anything

1:18:16.880,1:18:22.740
but eventually after, you know, a couple of hours of training

1:18:22.740,1:18:28.540
it's producing somewhat like bedroom-ish things,

1:18:28.540,1:18:33.420
So anyway, it's a notebook you can never play with and It's a bit of fun.

1:18:33.420,1:18:44.580
So, I was very excited when we got fastai to the point in the last week or so

1:18:44.580,1:18:51.000
that we had GANs working in a way we're kind of API wise,

1:18:51.000,1:18:55.800
they're far more concise and more flexible than any other library that exists

1:18:55.800,1:18:59.680
But also kind of disappointed with them

1:18:59.680,1:19:03.740
They take a long time to train and the outputs are still like so so

1:19:03.740,1:19:05.980
and so the next step was like well, can we get rid of GANs entirely

1:19:05.980,1:19:10.360
so the first step with that, I mean, obviously

1:19:10.360,1:19:13.500
the thing we really want to do is come up with a better loss function

1:19:13.500,1:19:17.860
We want a loss function that does a good job of saying this is a high-quality image

1:19:17.860,1:19:21.700
Without having to go all the over GAN trouble

1:19:21.700,1:19:24.540
and preferably it also doesn't just say it's a high-quality image

1:19:24.540,1:19:27.920
but it's an image which actually looks like the thing it meant to

1:19:27.920,1:19:32.580
So the real trick here comes back to this paper from a couple of years ago

1:19:32.580,1:19:36.220
perceptual losses of real-time style transfer and super resolution

1:19:36.220,1:19:39.020
Justin Johnson at el

1:19:39.020,1:19:41.360
create this thing they call perceptual losses.

1:19:41.360,1:19:44.360
It's a nice paper, but I hate this term

1:19:44.360,1:19:47.280
Because they're nothing particularly perceptual about them.

1:19:47.280,1:19:48.760
I would call them feature losses

1:19:48.760,1:19:52.600
so in the fastai library, you'll see this referred to as feature losses

1:19:52.600,1:19:55.940
and it shares something with GANs, which is that

1:19:55.940,1:20:01.320
After we go through our generator
which they call it Image Transform Net

1:20:01.320,1:20:04.400
and you can see it's got this kind of unet shaped thing

1:20:04.400,1:20:06.220
They didn't actually use Unet

1:20:06.220,1:20:09.760
because at the time this came out, nobody in the machine learning world knew about unets

1:20:09.760,1:20:14.440
Nowadays, of course we use unet, but anyway something unet-ish

1:20:14.440,1:20:19.520
I should mention like, in these kind of these architectures

1:20:19.520,1:20:22.060
where you have a down sampling path followed by up sampling path

1:20:22.060,1:20:26.000
The down sampling path is very often called the encoder

1:20:26.000,1:20:29.920
As you saw in our code, actually we call that the encoder

1:20:29.920,1:20:33.140
and the up sampling path is very often called the decoder

1:20:33.140,1:20:42.120
In generative models, you know, generally, including generative text models, neural translation stuff like that

1:20:42.120,1:20:45.580
They tend be called the encoder and the decoder, two pieces

1:20:45.580,1:20:48.000
anyway, so we have this generator

1:20:48.000,1:20:50.440
And we want a loss function

1:20:50.440,1:20:55.880
that says, You know, is the thing that is created like the thing that we want

1:20:55.880,1:20:58.940
and So the way they do that is they take the prediction

1:20:58.940,1:21:02.340
remember Y hat is what we normally use for a prediction from a model

1:21:02.340,1:21:08.640
We take the prediction and we put it through a pretrained Imagenet network

1:21:08.640,1:21:10.780
So at the time that this came out

1:21:10.780,1:21:14.100
the pre-training network at work they were using was vgg

1:21:14.100,1:21:18.480
People still, that's a kind of old now, but people still tend to use it

1:21:18.480,1:21:20.520
because it works fine for this process

1:21:20.520,1:21:26.380
So they take the prediction and they put it through Vgg

1:21:26.380,1:21:30.020
the pre trained imagenet network, It doesn't matter too much which one it is

1:21:30.020,1:21:32.800
And so normally the output of that would tell you

1:21:32.800,1:21:40.900
Hey, is this generated thing, you know, a dog or a cat or an airplane or a fire engine or whatever, right?

1:21:40.900,1:21:45.820
but in the process of getting to that final classification

1:21:45.820,1:21:47.120
it goes through lots of different layers

1:21:47.120,1:21:49.960
And in this case, they've color-coded all the layers

1:21:49.960,1:21:53.400
with the same grid size in the feature map with the same color

1:21:53.400,1:21:56.600
So every time we switch colors we're switching grid size,

1:21:56.600,1:21:57.700
so there's a stride 2 conv,

1:21:57.700,1:22:01.440
or in VGG's case they still used to use some max pooling layers,

1:22:01.440,1:22:02.920
which are kind of similar idea

1:22:02.920,1:22:06.120
And so what we could do is say,

1:22:06.120,1:22:13.120
hey let's not take the final output of the vgg model on this generated image

1:22:13.120,1:22:15.000
but let's take something in the middle

1:22:15.000,1:22:19.920
Let's take the activations of some layer in the middle.

1:22:19.920,1:22:24.960
So those activations, you know, it might be a feature map of like

1:22:24.960,1:22:29.480
256 channels by 28 by 28

1:22:29.480,1:22:35.380
so those kind of 28 by 28 grid cells will kind of roughly semantically say things like

1:22:35.380,1:22:39.920
hey in this part of that 28 by 28 grid, is there something that looks kind of furry

1:22:39.920,1:22:43.880
Or is there something that looks kind of shiny or is there something that was kind of circular?

1:22:43.880,1:22:46.600
Is there something that kind of looks like an eyeball, or whatever.

1:22:46.600,1:22:52.480
So what we do is that we then take the target, so the actual Y value

1:22:52.480,1:22:55.600
and we put it through the same pre-trained vgg network

1:22:55.600,1:22:57.600
and we can pull out the activations of the same layer

1:22:57.600,1:22:59.860
and then we do a mean square error comparison

1:22:59.860,1:23:08.820
So it'll say like, okay in the real image, grid cell (1, 1) of that 28 by 28 feature map you know,

1:23:08.820,1:23:15.300
is furry and blue and round shaped

1:23:15.300,1:23:20.040
and in the generated image, it's furry and blue and not round shaped.

1:23:20.040,1:23:23.200
So it's kind of like an okay match

1:23:23.200,1:23:28.720
So that ought to go a long way towards fixing our eyeball problem

1:23:28.720,1:23:31.180
because in this case the feature maps going to say

1:23:31.180,1:23:35.720
this eyeballs here, sorry here, but there isn't here.

1:23:35.720,1:23:39.280
So do a better job of that. Please make better eyeballs.

1:23:39.280,1:23:40.360
So that's the idea Okay,

1:23:40.360,1:23:46.800
and so that's what we call feature losses or Johnson at el  called perceptual losses

1:23:52.500,1:24:01.620
so to do that we're going to use the lesson 7  super res notebook

1:24:01.620,1:24:07.780
and this time the task we're going to do is kind of the same as the previous task

1:24:07.780,1:24:10.920
But I wrote this notebook a little bit before the GAN notebook

1:24:10.920,1:24:16.080
Before I came up with the idea of like putting text on it from having a random JPEG quality

1:24:16.080,1:24:18.220
So the JPEG quality is always 60.

1:24:18.220,1:24:20.000
There's no text written on top

1:24:20.000,1:24:22.200
And it's 96 by 96

1:24:22.200,1:24:28.660
So, and it's before I realized what a great word crappify is, so it's called resize

1:24:28.660,1:24:33.040
So here's our crappy images and our original images

1:24:33.040,1:24:37.160
Kind of a similar task to what we had before

1:24:37.160,1:24:41.920
so I'm going to try and create a loss function

1:24:41.920,1:24:46.280
which does this,

1:24:46.280,1:24:52.520
so the first thing I do is I define a base loss function

1:24:52.520,1:24:57.260
Which is basically like how am I going to compare the pixels and the features,

1:24:57.260,1:25:01.120
you know, and the choices are mainly like MSE or L1

1:25:01.120,1:25:03.440
Doesn't matter too much which you choose

1:25:03.440,1:25:08.100
I tend to like L1 better than MSE actually, so I picked L1 right?

1:25:08.100,1:25:13.780
So anytime you see base loss, we mean L1 loss, and you could use MSE loss as well

1:25:13.780,1:25:17.260
So let's create a vgg model, right?

1:25:17.260,1:25:19.240
So just using the pre-trained model

1:25:19.240,1:25:26.260
In vgg, there's a attribute called `.features` which contains the convolutional part of the model.

1:25:26.260,1:25:30.400
So here's the convolutional part of the vgg model

1:25:30.400,1:25:35.120
because we don't need the head because we only want the intermediate activations,

1:25:35.120,1:25:37.700
so then we'll check that on the GPU

1:25:37.700,1:25:40.620
We'll put it into eval mode because we're not training it

1:25:40.620,1:25:46.160
and we'll turn off `requires_grad` because we don't want to update the weights of this model

1:25:46.160,1:25:49.720
We're just using it for inference right for the loss

1:25:49.720,1:25:53.680
so then let's enumerate through all the children of that model

1:25:53.680,1:25:56.180
and find all of the max pooling layers

1:25:56.180,1:26:00.880
because in the vgg model, that's where the grid size changes

1:26:00.880,1:26:05.200
and as you can see from this picture we kind of want to grab features

1:26:05.200,1:26:08.680
from every time just before the grid size changes.

1:26:08.680,1:26:12.860
So we grab layer i-1, that's the layer before it changes

1:26:12.860,1:26:20.480
So there's our list of layer numbers just before the max pooling layers

1:26:20.560,1:26:24.960
and so all of those are ReLUs not surprisingly

1:26:24.960,1:26:30.180
So those are where we want to grab some features from

1:26:30.220,1:26:34.360
And so we put that in blocks, it's just a list of ID's

1:26:34.460,1:26:38.700
So here's our feature loss class which is going to implement this idea

1:26:38.700,1:26:43.980
So basically when we call the feature loss class,

1:26:43.980,1:26:47.060
we're going to pass it some pretrained model.

1:26:47.080,1:26:50.320
And so that's going to be called `m_feat`

1:26:50.320,1:26:56.040
That's the model which contains the features which we want to generate for what our feature loss on

1:26:56.040,1:26:59.860
so we can go ahead and grab all of the layers

1:26:59.860,1:27:06.480
from that network that we want the features for to create the losses

1:27:06.480,1:27:09.360
So we're going to need to hook all of those outputs

1:27:09.360,1:27:15.140
because remember, how we grab intermediate layers in pytorch is by hooking them.

1:27:15.140,1:27:19.580
So this is going to contain our hooked outputs

1:27:19.580,1:27:24.800
So now in the forward of feature loss,

1:27:24.800,1:27:28.800
we're going to call `make_features` passing in the `target`

1:27:28.900,1:27:30.260
So this is our actual y,

1:27:30.260,1:27:32.500
which is just going to call that vgg model

1:27:32.500,1:27:36.060
and go through all of the stored activations

1:27:36.060,1:27:38.720
and just grab a copy of them

1:27:38.840,1:27:42.400
and so we're going to do that both for the `target` call that `out_feat`

1:27:42.400,1:27:47.640
and for the input, so that's the output of our generator `in_feat`

1:27:47.640,1:27:55.420
and so now let's calculate the L1 loss between the pixels

1:27:55.420,1:27:57.660
because we still want the pixel loss a little bit

1:27:57.660,1:28:03.060
and then let's also go through all of those layers features

1:28:03.060,1:28:07.340
And get the L1 loss on them,

1:28:07.340,1:28:13.000
right so we're basically going through every one of these, end of each block

1:28:13.000,1:28:18.360
and grabbing the activations and getting the L1 on each one

1:28:18.360,1:28:24.040
So that's going to end up in this list

1:28:24.040,1:28:27.760
called `feat_losses`, which are then sum them all up

1:28:27.760,1:28:31.000
Okay, and you know, by the way the reason to do it as a list

1:28:31.000,1:28:33.180
is because we've got this nice little callback

1:28:33.180,1:28:37.280
that If you put them into a thing called `.metrics` in your loss function,

1:28:37.280,1:28:43.580
it'll print out all of the separate layer loss amounts for you,

1:28:43.580,1:28:44.780
which is super handy

1:28:44.780,1:28:50.760
So that's it. that's our perceptual loss or feature loss class

1:28:50.760,1:28:52.380
and so now we can just go ahead

1:28:52.380,1:28:56.180
and train a unet in the usual way with our data and pre-trained architecture

1:28:56.180,1:28:59.580
Which is a Resnet 34 passing in our loss function

1:28:59.580,1:29:02.300
Which is using our pre trained vgg model

1:29:02.300,1:29:05.020
and this is that callback I mentioned LossMetrics

1:29:05.020,1:29:08.140
which is going to print out all the different layers losses for us

1:29:08.140,1:29:12.400
These are two things that we'll learn about in part 2 of the course,

1:29:12.400,1:29:13.660
but you should use them

1:29:13.660,1:29:15.420
lr_find

1:29:15.420,1:29:18.300
I just created a little function called do_fit

1:29:18.300,1:29:22.180
that does fit one cycle and then saves the model and then shows the results

1:29:22.180,1:29:27.760
so as per usual, because we're using a pretrained network in our unet,

1:29:27.760,1:29:31.620
we start with frozen layers for the down sampling path

1:29:31.620,1:29:33.000
train for a while

1:29:33.000,1:29:35.500
and as you can see, we get not only the loss

1:29:35.500,1:29:39.340
but also the pixel loss and the loss at each of our feature layers

1:29:39.340,1:29:43.700
and then also something we'll learn about in part 2 called `gram_loss`

1:29:43.700,1:29:49.140
which I don't think anybody's used for super res before, as far as I know,

1:29:49.140,1:29:51.340
but as you'll see, it turns out great.

1:29:51.340,1:29:55.720
So, that's eight minutes so much faster than a GAN

1:29:55.720,1:30:00.180
and already as you can see, this is our output, modeled output pretty good.

1:30:00.180,1:30:02.840
So then we unfreeze

1:30:02.840,1:30:04.700
and train some more

1:30:04.700,1:30:07.260
and it's a little bit better

1:30:07.260,1:30:10.340
and then Let's switch up to double the size.

1:30:10.340,1:30:14.040
And so we need to also have the batch size to avoid running out GPU memory

1:30:14.040,1:30:17.420
and freeze again and train some more

1:30:17.420,1:30:18.840
so it's now taking half an hour,

1:30:18.840,1:30:20.640
even better

1:30:20.640,1:30:23.720
And then unfreeze and train some more

1:30:23.720,1:30:27.080
so all in all we've done about an hour and 20 minutes of training

1:30:27.080,1:30:29.800
And look at that

1:30:29.800,1:30:35.460
it's done it,  like I mean, it knows that eyes are important.

1:30:35.460,1:30:36.660
So it's really made an effort

1:30:36.660,1:30:38.600
It knows that fur is important.

1:30:38.600,1:30:39.360
So it's really made an effort.

1:30:39.360,1:30:42.880
So it's with something with like JPEG artifacts around the ears

1:30:42.880,1:30:47.700
and all this mess and like,

1:30:47.700,1:30:50.200
eyes that are just kind of vague light blue things

1:30:50.200,1:30:53.660
and it really created a lot of texture

1:30:53.660,1:30:57.120
This cat is clearly kind of like looking over the top,

1:30:57.120,1:31:00.320
of one of those little clawing frames covered in fuzz

1:31:00.320,1:31:05.640
so it actually recognized that this thing is probably kind of a carpeting materials.

1:31:05.640,1:31:06.980
It's created a carpeting material for us.

1:31:06.980,1:31:11.200
So I mean, that's just remarkable,

1:31:11.200,1:31:16.400
so talking of remarkable we can now,

1:31:16.400,1:31:24.140
I've never seen outputs like this before without a GAN

1:31:24.140,1:31:27.440
so I was just so excited when we were able to generate this

1:31:27.440,1:31:29.920
and so quickly one GPU hour-and-a-half

1:31:29.920,1:31:35.820
So like if you create your own crappification functions and train this model

1:31:35.820,1:31:38.080
you build stuff that nobody has built before

1:31:38.080,1:31:42.340
because like nobody else that I know of is doing it this way

1:31:42.340,1:31:44.100
so there are huge opportunities, I think

1:31:44.100,1:31:45.320
so check this out.

1:31:45.320,1:31:51.900
What we can now do is we can now instead of starting with our low res

1:31:51.900,1:31:56.920
I actually stored another set at size 256 which are called medium res

1:31:56.920,1:32:00.100
So let's see what happens if we upsize a medium res

1:32:00.100,1:32:04.080
so we're going to grab our medium res data and

1:32:04.080,1:32:12.640
and here is our medium res stored photo

1:32:12.640,1:32:14.680
and so can we improve this

1:32:14.680,1:32:16.780
so you can see there's still a lot of room for improvement

1:32:16.780,1:32:21.240
like you see the lashes here are very pixelated,

1:32:21.240,1:32:24.380
place where there should be hair here is just kind of fuzzy.

1:32:24.380,1:32:27.260
So watch this area as I hit down on my keyboard

1:32:27.260,1:32:29.780
Boom look at that.

1:32:29.780,1:32:30.800
It's done it,

1:32:30.800,1:32:37.020
you know, it's taken a medium res image and it's made a totally clear thing here,

1:32:37.020,1:32:39.720
you know the furs reappeared, but look at the eyeball.

1:32:39.720,1:32:40.540
Let's go back

1:32:40.540,1:32:45.080
the eyeball here is just kind of a general blue thing

1:32:45.080,1:32:49.720
Here it's added all the right texture, you know,

1:32:49.720,1:32:54.040
so I just think this is super exciting, you know,

1:32:54.040,1:32:56.660
here's a model I trained in an hour and a half

1:32:56.660,1:33:00.000
Using standard stuff that you've all learnt about

1:33:00.000,1:33:04.520
a unet,  a pretrained model, feature loss function

1:33:04.520,1:33:08.300
and we've got something which can turn that into that

1:33:08.300,1:33:14.100
or you know this absolute mess into this

1:33:14.100,1:33:19.400
and like it's really exciting to think what could you do with that? Right?

1:33:19.400,1:33:26.300
So one of the inspirations here has been a guy called Jason Antic

1:33:28.420,1:33:31.780
Jason was a student in the course last year

1:33:31.780,1:33:41.680
and what he did very sensibly was decided to focus

1:33:41.680,1:33:46.020
basically nearly quit his job and work four days a week, for really six days a week

1:33:46.020,1:33:47.080
on studying deep learning

1:33:47.080,1:33:51.120
and as you should do he created a kind of capstone project

1:33:51.120,1:33:56.480
and his project was to combine GANs and feature losses together

1:33:56.480,1:34:04.340
and his crappification approach was to take color pictures and make the black and white

1:34:04.340,1:34:08.140
So he took the whole of imagenet created a black and white imagenet

1:34:08.140,1:34:10.580
and then trained a model to recolorize it

1:34:10.580,1:34:12.400
and he's put this up as DeOldify

1:34:12.400,1:34:17.760
and now he's got these actual old photos from the 19th century

1:34:17.760,1:34:19.700
that he's turning into color.

1:34:19.700,1:34:23.980
and like what this is doing is incredible.

1:34:23.980,1:34:25.300
like look at this.

1:34:25.300,1:34:28.200
The model thought "oh that's probably some kind of copper kettle,

1:34:28.200,1:34:29.780
so I'll make it copper colored"

1:34:29.780,1:34:32.180
and "oh these pictures are on the wall,

1:34:32.180,1:34:34.340
they're probably like different colors to the wall"

1:34:34.340,1:34:40.760
and "maybe that looks a bit like a mirror, maybe it would be reflecting stuff outside."

1:34:40.760,1:34:44.080
you know "These things might be vegetables,

1:34:44.080,1:34:47.000
vegetables are often red. Let's make them red."

1:34:47.000,1:34:51.160
It's extraordinary what it's done.

1:34:51.160,1:34:53.440
And you could totally do this too.

1:34:53.440,1:34:58.480
Like you can take our feature loss and our GAN loss and combine them.

1:34:58.480,1:35:03.740
So I'm very grateful to Jason because he's helped us build this lesson,

1:35:03.740,1:35:06.400
and it has been really nice because we've been able to help him too

1:35:06.400,1:35:10.580
because he hadn't realized that he can use all this pre-training and stuff.

1:35:10.580,1:35:16.060
So hopefully you'll see DeOldify in a couple of weeks be even better at the deoldification.

1:35:16.060,1:35:23.340
But hopefully you all can now add other kinds of decrappification methods as well.

1:35:23.340,1:35:32.540
you know, I like every course if possible to show something totally new,

1:35:32.540,1:35:36.920
because then every student has the chance to basically build things that have never been built before.

1:35:36.920,1:35:39.420
So this is kind of that thing.

1:35:39.420,1:35:42.720
But between the much better segmentation results

1:35:42.720,1:35:45.500
and these much simpler and faster decrappification results,

1:35:45.500,1:35:47.960
i think you can build some really cool stuff.

1:35:47.960,1:35:51.100
Do you have a question?

1:35:51.100,1:35:59.800
Is it possible to use similar ideas to U-Net and GANs for NLP?

1:35:59.800,1:36:03.240
For example if I want to tag the verbs and nouns in a sentence

1:36:03.240,1:36:05.060
to create a really good Shakespeare generator

1:36:05.060,1:36:12.120
Yeah, pretty much. We don't fully know yet.

1:36:12.120,1:36:15.040
It's a pretty new area, but there's a lot of opportunities there.

1:36:15.040,1:36:18.980
And we'll be looking at some in a moment actually.

1:36:18.980,1:36:29.760
I actually tried testing this on this.

1:36:29.760,1:36:32.740
Remember this picture I showed you of a slide last lesson,

1:36:32.740,1:36:35.320
and it's a really rubbishy looking picture.

1:36:35.320,1:36:39.540
And I thought, what would happen if we tried running this just through the exact same model.

1:36:39.540,1:36:42.920
And it changed it from that (left) to that (right)

1:36:42.920,1:36:45.220
so I thought that was a really good example.

1:36:45.220,1:36:48.900
You can see something it didn't do which is this weird discoloration.

1:36:48.900,1:36:53.020
It didn't fix it because I didn't crappify things with weird discoloration.

1:36:53.020,1:36:59.700
So if you want to create really good image restoration like I say you need really good crappification.

1:36:59.700,1:37:06.920
Here is what we learned so far, right in the course

1:37:06.920,1:37:08.980
Here's some of the main things

1:37:08.980,1:37:15.340
We've learned that neural nets consist of sandwich layers of affine functions

1:37:15.340,1:37:19.220
which are basically matrix multiplications, slightly more general version

1:37:19.220,1:37:21.060
and nonlinearities like ReLU.

1:37:21.060,1:37:25.480
And we learnt that the results of those calculations are called activations,

1:37:25.480,1:37:30.000
and the things that go into those calculations we learned are called parameters.

1:37:30.000,1:37:33.900
The parameters are initially randomly initialized

1:37:33.900,1:37:36.020
or we copy them over from a pre-trained model,

1:37:36.020,1:37:39.820
and then we train them with SGD or faster versions.

1:37:39.820,1:37:43.800
We learnt that convolutions are a particular affine function

1:37:43.800,1:37:46.780
that work great for auto-correlated data,

1:37:46.780,1:37:48.280
so things like images and stuff.

1:37:48.280,1:37:52.020
We learnt about batch norm, dropout, data augmentation, and weight decay

1:37:52.020,1:37:54.900
as ways of regularizing models.

1:37:54.900,1:37:57.200
Also batch norm helps train models more quickly.

1:37:57.200,1:38:01.500
Then today, we've learned about Res/Dense blocks.

1:38:01.500,1:38:05.100
We obviously learnt a lot about image classification and regression,

1:38:05.100,1:38:08.320
embeddings, categorical and continuous variables,

1:38:08.320,1:38:12.800
collaborative filtering, language models, and NLP classification.

1:38:12.800,1:38:15.220
Then segmentation, U-Net and GANs.

1:38:15.220,1:38:22.020
So go over these things and make sure that you feel comfortable with each of them.

1:38:22.020,1:38:26.140
If you've only watched this series once, you definitely won't.

1:38:26.140,1:38:31.160
People normally watch it three times or so to really understand the detail.

1:38:31.160,1:38:37.920
One thing that doesn't get here is RNNs.

1:38:37.920,1:38:41.600
So that's the last thing we're going to do. RNNs;

1:38:41.600,1:38:47.880
I'm going to introduce a little diagrammatic method here to explain to RNNs,

1:38:47.880,1:38:52.520
and the diagrammatic method, I'll start by showing your basic neural net with a single hidden layer.

1:38:52.520,1:38:55.820
Square means an input.

1:38:55.820,1:39:07.960
So that'll be batch size by number of inputs.

1:39:07.960,1:39:13.360
An arrow means a layer (broadly defined)

1:39:13.360,1:39:16.180
such as matrix product followed by ReLU

1:39:16.180,1:39:20.320
A circle is activations.

1:39:20.320,1:39:25.520
So this case, we have one set of hidden activations

1:39:25.520,1:39:29.160
and so given that the input was number of inputs,

1:39:29.160,1:39:34.140
this here (the first arrow) is a matrix of number of inputs by number of activations.

1:39:34.140,1:39:38.340
So the output will be batch size by a number of activations.

1:39:38.340,1:39:41.220
It's really important you know how to calculate these shapes.

1:39:41.220,1:39:45.400
So go `learn.summary()` lots, to see all the shapes.

1:39:45.400,1:39:50.060
Then here's another arrow, so that means it's another layer;

1:39:50.060,1:39:52.300
matrix product followed by non-linearity.

1:39:52.300,1:39:54.780
In this case, we go into the output, so we use softmax.

1:39:54.780,1:39:59.760
and then triangle means an output.

1:39:59.760,1:40:03.300
This matrix product will be number of activations by a number of classes,

1:40:03.300,1:40:05.480
so our output is batch size by number classes.

1:40:05.480,1:40:10.320
Let's reuse that key;

1:40:10.320,1:40:13.920
triangle is output, circle is activations

1:40:13.920,1:40:17.320
hidden state - we also call that

1:40:17.320,1:40:19.980
and rectangle is input.

1:40:19.980,1:40:25.200
Let's now imagine that we wanted to get a big document,

1:40:25.200,1:40:28.760
split it into sets of three words at a time,

1:40:28.760,1:40:30.960
and grab each set of three words

1:40:30.960,1:40:35.700
and then try to predict the third word using the first two words.

1:40:35.700,1:40:39.520
If we had the dataset in place, we could:

1:40:39.520,1:40:41.560
Grab word 1 as an input.

1:40:41.560,1:40:45.120
Chuck it through an embedding, create some informations/activations.

1:40:45.120,1:40:52.400
Pass that through a matrix product and nonlinearity.

1:40:52.400,1:40:55.040
Grab the second word.

1:40:55.040,1:40:56.740
Put it through an embedding.

1:40:56.740,1:41:02.000
Then we could either add those two things together or concatenate them.

1:41:02.000,1:41:07.880
Generally speaking, when you see two sets of activations coming together in a diagram,

1:41:07.880,1:41:11.160
you normally have a choice of concatenate or or add.

1:41:11.160,1:41:15.420
And that's going to create the second bunch of activations.

1:41:15.600,1:41:22.580
Then you can put it through one more fully connected layer and softmax to create an output.

1:41:22.580,1:41:27.820
So that would be a totally standard, fully connected neural net

1:41:27.820,1:41:31.940
with one very minor tweak which is concatenating or adding at this point,

1:41:31.940,1:41:38.060
which we could use to try to predict the third word from pairs of two words.

1:41:38.060,1:41:44.060
Remember, arrows represent layer operations

1:41:44.060,1:41:49.600
and I removed in this one the specifics of what they are

1:41:49.600,1:41:51.960
because they're always an affine function followed by a non-linearity.

1:41:51.960,1:41:57.560
Let's go further.

1:41:57.560,1:42:02.840
What if we wanted to predict word 4 using words 1 and 2 and 3?

1:42:02.840,1:42:06.960
It's basically the same picture as last time except with one extra input and one extra circle.

1:42:06.960,1:42:14.760
But I want to point something out which is each time we go from rectangle to circle,

1:42:14.760,1:42:18.340
we're doing the same thing - we're doing an embedding.

1:42:18.340,1:42:23.840
Which is just a particular kind of matrix multiply where you have a one hot encoded input.

1:42:23.840,1:42:26.680
Each time we go from circle to circle,

1:42:26.680,1:42:31.980
we're basically taking one piece of hidden state (a.k.a activations)

1:42:31.980,1:42:36.300
and turning it into another set of activations by saying we're now at the next word.

1:42:36.300,1:42:39.260
Then when we go from circle to triangle,

1:42:39.260,1:42:41.160
we're doing something else again

1:42:41.160,1:42:45.560
which is we're saying let's convert the hidden state (i.e. these activations) into an output.

1:42:45.560,1:42:50.260
So it makes sense, you can see I've colored each of those arrows differently.

1:42:50.260,1:42:55.400
Each of those arrows should probably use the same weight matrix

1:42:55.400,1:42:57.980
because it's doing the same thing.

1:42:57.980,1:43:00.620
So why would you have a different set of embeddings for each word

1:43:00.620,1:43:04.420
or a different matrix to multiply by

1:43:04.420,1:43:07.600
to go from this hidden state to this hidden state versus this one?

1:43:07.600,1:43:11.620
So this is what we're going to build.

1:43:11.620,1:43:22.020
We're now going to jump into human numbers

1:43:22.020,1:43:23.540
which is lesson7-human-numbers.ipynb.

1:43:23.540,1:43:25.600
This is a dataset that I created

1:43:25.600,1:43:28.020
which literally just contains all the numbers

1:43:28.020,1:43:31.760
from 1 to 9,999 written out in English.

1:43:31.760,1:43:34.740
We're going to try to create a language model

1:43:34.740,1:43:37.120
that can predict the next word in this document.

1:43:37.120,1:43:39.780
It's just a toy example for this purpose.

1:43:39.780,1:43:44.660
In this case, we only have one document.

1:43:44.660,1:43:46.580
That one document is the list of numbers.

1:43:46.580,1:43:49.020
So we can use a `TextList`

1:43:49.020,1:43:53.020
to create an item list with text in for the training and the validation.

1:43:53.020,1:43:56.240
In this case, the validation set is the numbers from 8,000 onwards,

1:43:56.240,1:43:58.840
and the training set is 1 to 8,000.

1:43:58.840,1:44:00.780
We can combine them together,

1:44:00.780,1:44:03.120
turn that into a data bunch.

1:44:03.120,1:44:05.780
We only have one document,

1:44:05.780,1:44:07.440
so `train[0]` is the document

1:44:07.440,1:44:11.260
grab its `.text`, that's how you grab the contents of a text list,

1:44:11.260,1:44:12.860
and here are the first 80 characters.

1:44:12.860,1:44:17.580
It starts with a special token `xxbos`.

1:44:17.580,1:44:20.600
Anything starting with `xx` is a special fast.ai token,

1:44:20.600,1:44:23.900
`bos` is the beginning of stream token.

1:44:23.900,1:44:26.060
It basically says this is the start of a document,

1:44:26.060,1:44:30.200
and it's very helpful in NLP to know when documents start

1:44:30.200,1:44:32.580
so that your models can learn to recognize them.

1:44:32.580,1:44:36.460
The validation set contains 13,000 tokens.

1:44:36.460,1:44:39.920
So 13,000 words or punctuation marks

1:44:39.920,1:44:42.340
because everything between spaces is a separate token.

1:44:42.340,1:44:51.260
The batch size that we asked for was 64,

1:44:51.260,1:44:56.340
and then by default it uses something called `bptt` of 70.

1:44:56.340,1:45:00.600
`bptt`, as we briefly mentioned, stands for "back prop through time".

1:45:00.600,1:45:02.760
That's the sequence length.

1:45:02.760,1:45:09.460
For each of our 64 document segments,

1:45:09.460,1:45:15.400
we split it up into lists of 70 words that we look at at one time.

1:45:15.400,1:45:22.800
So what we do for the validation set is we grab this entire string of 13,000 tokens,

1:45:22.800,1:45:29.900
and then we split it into 64 roughly equal sized sections.

1:45:29.900,1:45:34.100
People very very very often think I'm saying something different.

1:45:34.100,1:45:36.560
I did not say "they are of length 64" - they're not.

1:45:36.560,1:45:42.100
They're 64  roughly equally sized segments

1:45:42.100,1:45:45.940
So we take the first 1/64 of the document, piece 1

1:45:45.940,1:45:47.340
The second 1/64 - piece 2

1:45:47.340,1:45:54.620
so and then for each of those 1/64 of the document,

1:45:54.620,1:45:58.460
we then split those into pieces of length 70.

1:45:58.460,1:46:06.320
So let's now say for those 13,000 tokens,

1:46:06.320,1:46:07.540
how many batches are there?

1:46:07.540,1:46:10.860
Well, divide by batch size and divide by 70,

1:46:10.860,1:46:15.220
so there's about 2.9 batches, it's going to be 3 batches.

1:46:15.220,1:46:18.160
so let's grab an iterator for a data loader,

1:46:18.160,1:46:22.340
grab 1 2 3 batches (the X and the Y),

1:46:22.340,1:46:25.200
and let's add up the number of elements,

1:46:25.200,1:46:28.200
and we get back slightly less than this,

1:46:28.200,1:46:30.340
because there's a little bit left over at the end

1:46:30.340,1:46:32.300
that doesn't quite make up a full batch.

1:46:32.300,1:46:36.260
This is the kind of stuff you should play around

1:46:36.260,1:46:39.620
with a lot - lots of shapes and sizes and stuff and iterators.

1:46:39.620,1:46:43.700
As you can see, it's 95 by 64.

1:46:43.700,1:46:46.280
I claimed it was going to be 70 by 64.

1:46:46.280,1:46:53.580
That's because our data loader for language models slightly randomizes `bptt`

1:46:53.580,1:46:57.960
just to give you a bit more shuffling - get bit more randomization - it helps the model.

1:46:57.960,1:47:05.520
So here, you can see the first batch of x

1:47:05.520,1:47:09.360
remember, we've numericalized all these

1:47:09.360,1:47:11.740
and here's the first batch of y

1:47:11.740,1:47:15.420
. And you'll see here `x1` is `[2, 18, 10, 11, 8, ...]`

1:47:15.420,1:47:17.220
, this is `y1` is `[18, 10, 11, 8, ...]`.

1:47:17.220,1:47:22.220
So this one `y1` is offset by 1 from here `x1`.

1:47:22.220,1:47:24.040
Because that's what you want to do with a language model.

1:47:24.040,1:47:26.400
We want to predict the next word.

1:47:26.400,1:47:31.640
So after 2, should come 18, and after 18, should come 10.

1:47:31.640,1:47:36.900
You can grab the vocab for this dataset,

1:47:36.900,1:47:38.840
and a vocab has a `textify`

1:47:38.840,1:47:42.120
so if we look at exactly the same thing but with `textify`,

1:47:42.120,1:47:43.560
that will just look it up in the vocab.

1:47:43.560,1:47:47.120
So here you can see `xxbos eight thousand one`

1:47:47.120,1:47:50.280
where else in the `y`, there's no `xxbos`,

1:47:50.280,1:47:51.520
it's just `eight thousand one`.

1:47:51.520,1:47:55.280
So after `xxbos` is `eight`, after `eight` is `thousand`, after `thousand` is `one`.

1:47:55.280,1:48:03.920
Then after we get 8023, comes `x2`, and look at this,

1:48:03.920,1:48:05.000
we're always looking at column 0,

1:48:05.000,1:48:08.200
so this is the first batch (the first mini batch)

1:48:08.200,1:48:13.940
comes 8024 and then `x3`, all the way up to 8,040 .

1:48:13.940,1:48:18.660
Then we can go right back to the start,

1:48:18.660,1:48:23.320
but look at batch 1, so index 1, which is batch number 2.

1:48:23.320,1:48:25.180
Now we can continue.

1:48:25.180,1:48:28.820
A slight skip from 8,040 to 8,046,

1:48:28.820,1:48:31.040
that's because the last mini batch wasn't quite complete.

1:48:31.040,1:48:41.380
What this means is that every mini batch joins up with a previous mini batch.

1:48:41.380,1:48:45.520
So you can go straight from x1[0] to x2[0]

1:48:45.520,1:48:48.120
it continues 8,023, 8,024.

1:48:48.120,1:48:53.300
If you took the same thing for `:,1`,

1:48:53.300,1:48:54.900
you'll also see they join up.

1:48:54.900,1:48:57.640
So all the mini batches join up.

1:48:57.640,1:49:01.640
That's the data. We can do show_batch to see it.

1:49:01.640,1:49:12.500
Here is our model which is doing this

1:49:12.500,1:49:19.520
This is just a code copied over:

1:49:19.520,1:49:26.580
It contains 1 embedding i.e. the green arrow,

1:49:26.580,1:49:31.760
one hidden to hidden - brown arrow layer,

1:49:31.760,1:49:34.260
and one hidden to output.

1:49:34.260,1:49:39.020
So each colored arrow has a single matrix.

1:49:39.020,1:49:45.680
Then in the forward pass, we take our first input `x[0]`

1:49:45.680,1:49:49.560
and put it through input to hidden , the green arrow,

1:49:49.560,1:49:53.320
create our first set of activations which we call `h`.

1:49:53.320,1:49:56.620
Assuming that there is a second word,

1:49:56.620,1:49:59.540
because sometimes we might be at the end of a batch

1:49:59.540,1:50:00.800
where there isn't a second word.

1:50:00.800,1:50:01.740
Assume there is a second word

1:50:01.740,1:50:05.900
then we would add to `h` the result of `x[1]`

1:50:05.900,1:50:07.640
put through the green arrow (that's `i_h`).

1:50:07.640,1:50:18.240
Then we would say, okay our new `h` is the result of those two added together,

1:50:18.240,1:50:23.140
put through our hidden to hidden (orange arrow),

1:50:23.140,1:50:24.660
and then ReLU then batch norm.

1:50:24.660,1:50:28.000
Then for the second word, do exactly the same thing.

1:50:28.000,1:50:31.560
Then finally blue arrow, put it through `h_o`.

1:50:31.560,1:50:35.060
So that's how we convert our diagram to code.

1:50:35.060,1:50:40.140
Nothing new here at all.

1:50:40.140,1:50:46.460
We can chuck that in a learner,

1:50:46.460,1:50:48.240
and we can train it - 46%.

1:50:48.240,1:50:52.200
Let's take this code and recognize it's pretty awful.

1:50:52.200,1:50:54.400
There's a lot of duplicate code,

1:50:54.400,1:50:56.680
and as coders, when we see duplicate code, what do we do?

1:50:56.680,1:51:00.160
We refactor. So we should refactor this into a loop.

1:51:00.160,1:51:04.840
Here we are. We've refactored it into a loop.

1:51:04.840,1:51:07.640
So now we're going for each `xi` in `x`, and doing it in the loop.

1:51:07.640,1:51:10.800
Guess what? That's an RNN.

1:51:10.800,1:51:14.980
An RNN is just a refactoring.

1:51:14.980,1:51:18.540
It's not anything new.

1:51:18.540,1:51:20.460
This is now an RNN.

1:51:20.460,1:51:23.800
And let's refactor our diagram:

1:51:23.800,1:51:26.980
From this to this,

1:51:26.980,1:51:28.680
This is the same diagram,

1:51:28.680,1:51:32.740
but I've just replaced it with my loop.

1:51:32.740,1:51:37.040
It does the same thing, so here it is.

1:51:37.040,1:51:39.320
It's got exactly the same `__init__`, literally exactly the same,

1:51:39.320,1:51:40.620
just popped a loop here.

1:51:40.620,1:51:45.660
Before I start, I just have to make sure that I've got a bunch of zeros to add to.

1:51:45.660,1:51:50.220
And of course, I get exactly the same result when I train it.

1:51:50.220,1:51:55.700
One nice thing about the loop though,

1:51:55.700,1:52:00.020
is now this will work even if I'm not predicting the fourth word from the previous three,

1:52:00.020,1:52:02.060
but the ninth word from the previous eight.

1:52:02.060,1:52:05.720
It'll work for any arbitrarily length long sequence, which is nice.

1:52:05.720,1:52:08.620
So let's up the `bptt` to 20

1:52:08.620,1:52:09.680
since we can now.

1:52:09.680,1:52:23.320
And let's now say, okay, instead of just predicting the nth word from the previous n-1.

1:52:23.320,1:52:26.260
let's try to predict the second word from the first,

1:52:26.260,1:52:29.040
the third from the second, and the fourth from the third, and so forth.

1:52:29.040,1:52:31.820
because previously, now look at our loss function,

1:52:31.820,1:52:37.340
Previously we were comparing the result of our model to just the last word of the sequence.

1:52:37.340,1:52:40.340
It is very wasteful, because there's a lot of words in the sequence.

1:52:40.340,1:52:45.420
So let's compare every word in `x` to every word in `y`.

1:52:45.420,1:52:47.860
To do that, we need to change this, the diagram,

1:52:47.860,1:52:50.720
so it's not just one triangle at the end of the loop,

1:52:50.720,1:52:55.540
but the triangle is inside this, the loop

1:52:55.540,1:53:01.180
In other words, after every loop, predict, loop, predict, loop, predict.

1:53:01.180,1:53:06.340
Here's this code.

1:53:06.340,1:53:07.520
It's the same as the previous code,

1:53:07.520,1:53:08.680
but now I've created an array,

1:53:08.680,1:53:14.900
and every time I go through the loop, I append `h_o(h)` to the array.

1:53:14.900,1:53:18.540
Now, for n inputs, I create n outputs.

1:53:18.540,1:53:20.660
So I'm predicting after every word.

1:53:20.660,1:53:24.840
Previously I had 46%, now I have 40%.

1:53:24.840,1:53:26.680
Why is it worse?

1:53:26.680,1:53:32.340
It's worse because now when I'm trying to predict the second word,

1:53:32.340,1:53:34.220
I only have one word of state to use.

1:53:34.220,1:53:38.200
When I'm looking at the third word,

1:53:38.200,1:53:40.180
I only have two words of state to use.

1:53:40.180,1:53:42.860
So it's a much harder problem for it to solve.

1:53:42.860,1:53:48.160
So, the obvious way to fix this then, the key problem is here

1:53:48.160,1:53:49.760
I go `h = torch.zeros`.

1:53:49.760,1:53:55.740
like I reset my state to zero every time I start another BPTT sequence.

1:53:55.740,1:53:57.460
well Let's not do that.

1:53:57.460,1:53:59.100
Let's keep `h`.

1:53:59.100,1:54:03.780
And we can, because remember, each batch connects to the previous batch.

1:54:03.780,1:54:08.620
It's not shuffled like happens in image classification.

1:54:08.620,1:54:11.280
So let's take this exact model and replicate it again,

1:54:11.280,1:54:14.480
but let's move the creation of `h` into the constructor.

1:54:14.480,1:54:18.280
There it is. So it's now `self.h`.

1:54:18.280,1:54:20.820
So this is now exactly the same code,

1:54:20.820,1:54:24.320
but at the end, let's put the new `h` back into `self.h`.

1:54:24.320,1:54:29.980
It's now doing the same thing, but it's not throwing away that state.

1:54:29.980,1:54:34.600
Therefore, now we actually get above the original.

1:54:34.600,1:54:36.120
We get all the way up to 54% accuracy.

1:54:36.120,1:54:42.240
So this is what a real RNN looks like.

1:54:42.240,1:54:45.920
You always want to keep that state.

1:54:45.920,1:54:51.920
But just keep remembering, there's nothing different about an RNN, and it's a totally normal fully connected neural net.

1:54:51.920,1:54:55.280
It's just that you've got a loop you refactored.

1:54:55.280,1:55:03.560
What you could do though is at the end of your every loop,

1:55:03.560,1:55:05.600
you could not just spit out an output,

1:55:05.600,1:55:08.160
but you could spit it out into another RNN.

1:55:08.160,1:55:10.600
So you have an RNN going into an RNN.

1:55:10.600,1:55:13.220
That's nice because we now got more layers of computation,

1:55:13.220,1:55:16.540
you would expect that to work better.

1:55:16.540,1:55:20.000
To get there, let's do some more refactoring.

1:55:20.000,1:55:26.980
Let's take this code (`Model3`) and replace it with the equivalent built in PyTorch code

1:55:26.980,1:55:30.060
which is you just say that:

1:55:30.060,1:55:33.000
So `nn.RNN` basically says do the loop for me.

1:55:33.000,1:55:35.140
We've still got the same embedding,

1:55:35.140,1:55:36.720
we've still got the same output,

1:55:36.720,1:55:38.240
still got the same batch norm,

1:55:38.240,1:55:40.420
we still got the same initialization of `h`,

1:55:40.420,1:55:41.720
but we just got rid of the loop.

1:55:41.720,1:55:45.000
One of the nice things about RNN

1:55:45.000,1:55:48.380
is that you can now say how many layers you want.

1:55:48.380,1:55:51.660
This is the same accuracy of course:

1:55:51.660,1:55:54.920
So here, I'm going to do it with two layers:

1:55:54.920,1:55:59.420
But here's the thing. When you think about this:

1:55:59.420,1:56:03.100
Think about it without the loop. It looks like this:

1:56:03.100,1:56:08.300
It keeps on going, and we've got a BPTT of 20,

1:56:08.300,1:56:09.940
so there's 20 layers of this.

1:56:09.940,1:56:14.440
And we know from that visualizing the loss landscapes paper,

1:56:14.440,1:56:20.260
that deep networks have awful bumpy loss surfaces.

1:56:20.260,1:56:26.360
So when you start creating long timescales and multiple layers,

1:56:26.360,1:56:29.460
these things get impossible to train.

1:56:29.460,1:56:32.920
There's a few tricks you can do.

1:56:32.920,1:56:35.780
One thing is you can add skip connections, of course.

1:56:35.780,1:56:43.700
But what people normally do is, instead of just adding these together, the green and orange arrows,

1:56:43.700,1:56:46.880
they actually use a little mini neural net to decide

1:56:46.880,1:56:49.500
how much of the green arrow to keep

1:56:49.500,1:56:51.580
and how much of the orange arrow to keep.

1:56:51.580,1:56:56.760
When you do that, you get something that's either called GRU or LSTM

1:56:56.760,1:56:59.020
depending on the details of that little neural net.

1:56:59.020,1:57:01.880
And we'll learn about the details of those neural nets in part 2.

1:57:01.880,1:57:03.920
They really don't matter though, frankly.

1:57:03.920,1:57:07.060
So we can now say let's create a GRU instead.

1:57:07.060,1:57:08.860
It's just like what we had before,

1:57:08.860,1:57:12.780
but it'll handle longer sequences in deeper networks.

1:57:12.780,1:57:14.180
Let's use two layers.

1:57:14.180,1:57:17.180
Boom, and we're up to 75%.

1:57:17.180,1:57:24.900
That's RNNs

1:57:24.900,1:57:32.660
and the main reason I wanted to show it to you was to remove the last remaining piece of magic

1:57:32.660,1:57:37.240
and this is one of the least magical things we have in deep learning.

1:57:37.240,1:57:40.340
It's just a refactored fully connected network.

1:57:40.340,1:57:43.620
So don't let RNNs ever put you off.

1:57:43.620,1:57:46.940
With this approach

1:57:46.940,1:57:51.080
where you basically have a sequence of n inputs and a sequence n outputs

1:57:51.080,1:57:54.480
we've been using for language modeling, you can use that for other tasks.

1:57:54.480,1:57:58.900
For example, the sequence of outputs could be for every word

1:57:58.900,1:57:59.800
there could be something saying

1:57:59.800,1:58:03.040
is this something that is sensitive and I want to anonymize or not.

1:58:03.040,1:58:07.340
So is it private data or not.

1:58:07.340,1:58:10.200
Or it could be a part of speech tag for that word,

1:58:10.200,1:58:18.580
or it could be something saying how should that word be formatted, or whatever.

1:58:18.580,1:58:20.720
These are called sequence labeling tasks

1:58:20.720,1:58:25.680
and so you can use this same approach for pretty much any sequence labeling task.

1:58:25.680,1:58:29.160
Or you can do what I did in the earlier lesson

1:58:29.160,1:58:31.260
which is once you finish building your language model,

1:58:31.260,1:58:38.420
you can throw away the `h_o` bit,

1:58:38.420,1:58:43.000
and instead pop there a standard classification head,

1:58:43.000,1:58:45.660
and then you can now do NLP classification

1:58:45.660,1:58:50.220
which as you saw earlier will give you a state of the art results

1:58:50.220,1:58:52.900
even on long documents

1:58:52.900,1:58:58.800
So this is a super valuable technique, and not remotely magical.

1:58:58.800,1:59:02.380
ok, so that's it.

1:59:02.380,1:59:04.040
That's deep learning,

1:59:04.040,1:59:08.440
or at least the practical pieces from my point of view.

1:59:08.440,1:59:17.820
Having watched this one time, you won't get it all.

1:59:17.820,1:59:22.380
And I don't recommend that you do watch this so slowly that you get it all the first time,

1:59:22.380,1:59:25.020
but you go back and look at it again,

1:59:25.020,1:59:29.980
take your time, and there'll be bits that you go like "oh, now I see what he's saying"

1:59:29.980,1:59:32.640
and then you'll be able to implement things you couldn't before

1:59:32.640,1:59:34.320
or you'll be able to dig in more than before.

1:59:34.320,1:59:35.880
So definitely go back and do it again.

1:59:35.880,1:59:41.680
And as you do, write code, not just for yourself but put it on github.

1:59:41.680,1:59:45.120
It doesn't matter if you think it's great code or not.

1:59:45.120,1:59:50.620
The fact that you're writing code and sharing it is impressive

1:59:50.620,1:59:53.260
and the feedback you'll get if you tell people on the forum

1:59:53.260,2:00:00.960
"hey, I wrote this code. It's not great but it's my first effort. Anything you see jump out at you?"

2:00:00.960,2:00:02.700
People will say like "oh, that bit was done well.

2:00:02.700,2:00:06.440
But you know, for this bit, you could have used this library and saved you sometime."

2:00:06.440,2:00:09.220
You'll learn a lot by interacting with your peers.

2:00:09.220,2:00:13.980
As you've noticed, I've started introducing more and more papers.

2:00:13.980,2:00:17.120
Part 2 will be a lot of papers,

2:00:17.120,2:00:23.180
so it's a good time to start reading some of the papers that have been introduced in this section.

2:00:23.180,2:00:27.220
All the bits that say like derivation and theorems and lemmas,

2:00:27.220,2:00:28.620
you can skip them. I do.

2:00:28.620,2:00:32.600
They add almost nothing to your understanding of your practical deep learning.

2:00:32.600,2:00:35.680
But the bits that say like you know,

2:00:35.680,2:00:37.860
why are we solving this problem,

2:00:37.860,2:00:41.380
and what are the results, and so forth, are really interesting.

2:00:41.380,2:00:46.520
Then try and write English prose.

2:00:46.520,2:00:52.240
Not English prose that you want to be read by Geoffrey Hinton and Yann LeCun,

2:00:52.240,2:00:56.480
but English prose you want to be read by
you as of six months ago.

2:00:56.480,2:01:01.780
Because there's a lot more people in the audience of you as of six months ago

2:01:01.780,2:01:04.200
than there is of Geoffrey Hinton and Yann LeCun.

2:01:04.200,2:01:08.160
That's the person you best understand. You know what they need.

2:01:08.160,2:01:12.680
Go and get help, and help others.

2:01:12.680,2:01:14.580
Tell us about your success stories.

2:01:14.580,2:01:18.660
But perhaps the most important one is get together with others.

2:01:18.660,2:01:24.040
People's learning works much better if you've got that social experience.

2:01:24.040,2:01:31.420
So start a book club, get involved in meetups, create study groups, and build things.

2:01:31.420,2:01:35.560
Again, it doesn't have to be amazing.

2:01:35.560,2:01:41.280
Just build something that you think the world would be a little bit better if that existed.

2:01:41.280,2:01:45.900
Or you think it would be kind of slightly delightful to your two-year-old to see that thing.

2:01:45.900,2:01:49.760
Or you just want to show it to your brother the next time they come around to see what you're doing, whatever.

2:01:49.760,2:01:57.840
Just finish something. Finish something and then try make it a bit better.

2:01:57.840,2:02:03.620
For example something I just saw this afternoon

2:02:03.620,2:02:06.400
is the Elon Musk tweet generator.

2:02:06.400,2:02:14.320
Looking at lots of older tweets, creating a language model from Elon Musk,

2:02:14.320,2:02:16.540
and then creating new tweets such as

2:02:16.540,2:02:21.840
"Humanity will also have an option to publish on its own journey as an alien civilization.

2:02:21.840,2:02:24.680
it will always like all human being."

2:02:24.680,2:02:26.780
"Mars is no longer possible,"

2:02:26.780,2:02:30.440
"AI will definitely be the central intelligence agency."

2:02:30.440,2:02:33.160
So this is great. I love this.

2:02:33.160,2:02:37.140
And I love that Dave Smith wrote and said

2:02:37.140,2:02:42.860
"these are my first-ever commits. Thanks for teaching a finance guy how to build an app in eight weeks".

2:02:42.860,2:02:46.920
I think this is awesome

2:02:46.920,2:02:51.220
and I think clearly a lot of care and passion is being put into this project.

2:02:51.220,2:02:59.400
Will it systematically change the future direction of society as a whole?

2:02:59.400,2:03:00.360
Maybe not.

2:03:00.360,2:03:03.500
But maybe Elon will look at this and think

2:03:03.500,2:03:06.440
"oh, maybe I need to rethink my method of prose," I don't know.

2:03:06.440,2:03:15.320
I think it's great. So yeah, create something, put it out there, put a bit of yourself into it.

2:03:15.320,2:03:18.300
Or get involved in the fast.ai.

2:03:18.300,2:03:21.020
The fast.ai project, there's a lot going on.

2:03:21.020,2:03:23.580
You can help with documentation and tests

2:03:23.580,2:03:28.100
which might sound boring but you'd be surprised how incredibly not boring it is

2:03:28.100,2:03:32.940
to take a piece of code that hasn't been properly documented, and research it, and understand it,

2:03:32.940,2:03:36.840
and ask Sylvain and I on the forum: what's going on? Why did you write it this way?

2:03:36.840,2:03:39.280
We'll send you off to the papers that we were implementing.

2:03:39.280,2:03:45.940
Writing a test requires deeply understanding that part of the machine learning world to really understand how it's meant to work.

2:03:45.940,2:03:47.480
So that's always interesting.

2:03:47.480,2:03:51.880
Stats Bakman has created this nice Dev Projects Index

2:03:51.880,2:03:56.340
which you can go onto the forum in the fast.ai dev projects section

2:03:56.340,2:04:02.440
and find like here's some stuff going on that you might want to get involved in.

2:04:02.440,2:04:04.780
Maybe there's stuff you want to exist you can add your own.

2:04:04.780,2:04:10.560
Create a study group you know Deena's already created a study group for San
Francisco starting in January.

2:04:10.560,2:04:12.320
This is how easy it is to create a study group.

2:04:12.320,2:04:18.260
Go on the forum, find your little timezone subcategory, and add a post saying let's create a study group.

2:04:18.260,2:04:24.400
But make sure you give people like a Google sheet to sign up, somewhere to actually do something.

2:04:24.400,2:04:36.060
A great example is Pierre who's been doing a fantastic job in Brazil of running study groups for the last couple of parts of the course.

2:04:36.060,2:04:41.280
And he keeps posting these pictures of people having a good time and learning deep learning together,

2:04:41.280,2:04:45.760
creating wiki's together, creating projects together - great experience.

2:04:45.760,2:04:54.060
Then come back for part 2 where we'll be looking at all of this interesting stuff.

2:04:54.060,2:04:58.940
In particular, going deep into the fast.ai code base to understand how did we build it exactly.

2:04:58.940,2:05:01.760
We will actually go through as we were building it,

2:05:01.760,2:05:05.820
we created notebooks of like, here's where we were at each stage,

2:05:05.820,2:05:08.440
so we're actually going to see the software development process itself.

2:05:08.440,2:05:10.760
We'll talk about the process of doing research;

2:05:10.760,2:05:13.880
how to read academic papers, how to turn math into code.

2:05:13.880,2:05:19.420
Then a whole bunch of additional types of models that we haven't seen yet.

2:05:19.420,2:05:25.640
So it'll be kind of like going beyond practical deep learning into actually cutting-edge research.

2:05:25.640,2:05:33.520
so we have got 5 minutes, to take some questions we had at AMA  going on online

2:05:33.520,2:05:39.120
and so we're going to have time for a couple of the highest ranked AMA questions from the community

2:05:39.120,2:05:43.720
The first one is by Jeremy's request, although it's not the highest ranked.

2:05:43.720,2:05:48.560
What's your typical day like? How do you manage your time across so many things that you do?

2:05:48.560,2:05:56.800
I hear that all the time, so I thought I should answer it, and I think I've got a few votes.

2:05:56.800,2:06:08.400
People who come to our study group are always shocked at how disorganized and incompetent I am,

2:06:08.400,2:06:16.980
and so I often hear people saying like "oh wow, I thought you were like this deep learning role model and I'd get to see how to be like you and now I'm not sure I want to be like you at all."

2:06:16.980,2:06:27.660
For me, it's all about just having a good time with it. I never really have many plans.

2:06:27.660,2:06:31.140
I just try to finish what I start.

2:06:31.140,2:06:36.800
If you're not having fun with it, it's really really hard to continue because there's a lot of frustration in deep learning.

2:06:36.800,2:06:39.180
Because it's not like writing a web app

2:06:39.180,2:06:52.080
where it's like authentication, check, backend service watchdog, check, user credentials, check - you're making progress.

2:06:52.080,2:06:56.980
Where else, for stuff like this GAN stuff that we've been doing the last couple of weeks,

2:06:56.980,2:07:06.100
it's just like, it's not working, it's not working, it's not working, no it also didn't work, and it also didn't work, until like "OH MY GOD IT'S AMAZING. It's a cat."

2:07:06.100,2:07:09.640
That's kind of what it is. So you don't get that regular feedback.

2:07:09.640,2:07:14.060
So yeah, you gotta have fun with it.

2:07:14.060,2:07:23.860
yeah, so my day is kind of, you know, he other thing, I don't do any meetings.

2:07:23.860,2:07:28.880
I don't do phone calls. I don't do coffees. I don't watch TV. I don't play computer games.

2:07:28.880,2:07:38.240
I spend a lot of time with my family. A lot of time exercising, and a lot time reading, and coding, and doing things I like.

2:07:38.240,2:07:46.100
So the main thing is just finish something.

2:07:46.100,2:07:48.700
Like properly finish it.

2:07:48.700,2:07:59.300
So when you get to that point where you think 80% of the way through, but you haven't quite created a README yet, and the install process is still a bit clunky - this is what 99% of github projects look like.

2:07:59.300,2:08:07.880
You'll see the README says "TODO: complete baseline experiments document blah blah blah."

2:08:07.880,2:08:18.520
Don't be that person. Just do something properly and finish it and maybe get some other people around you to work with you so that you're all doing it together and get it done.

2:08:18.520,2:08:32.620
What are the up-and-coming deep learning/machine learning things that you're most excited about? Also you've mentioned last year that you are not a believer in reinforcement learning. Do you still feel the same way?

2:08:32.620,2:08:37.140
I still feel exactly the same way as I did three years ago

2:08:37.140,2:08:44.100
when we started this which is it's all about transfer learning. It's under-appreciated, it's under-researched.

2:08:44.100,2:08:47.140
Every time we put transfer learning into anything, we make it much better.

2:08:47.140,2:08:57.320
Our academic paper on transfer learning for NLP has helped be one piece of changing the direction of NLP this year,

2:08:57.320,2:09:03.620
made it all the way to the New York Times - just a stupid, obvious little thing that we threw together.

2:09:03.620,2:09:09.860
So I remain excited about that. I remain unexcited about reinforcement learning for most things.

2:09:09.860,2:09:15.380
I don't see it used by normal people for normal things for nearly anything.

2:09:15.380,2:09:21.740
It's an incredibly inefficient way to solve problems which are often solved more simply and more quickly in other ways.

2:09:21.740,2:09:31.200
It probably has (maybe?) a role in the world but a limited one and not in most people's day-to-day work.

2:09:31.200,2:09:45.760
For someone planning to take part 2 in 2019, what would you recommend doing learning practicing until the part 2 of course starts?

2:09:45.760,2:09:50.780
Just code. Yeah, just code all the time.

2:09:50.780,2:09:56.600
I know it's perfectly possible, I hear from people who get to this point of the course and they haven't actually written any code yet.

2:09:56.600,2:10:02.620
And if that's you, it's okay. You just go through and do it again, and this time do code.

2:10:02.620,2:10:13.940
And look at the shapes of your inputs, look at your outputs, make sure you know how to grab a mini batch, look at its mean and standard deviation, and plot it.

2:10:13.940,2:10:19.020
There's so much material that we've covered.

2:10:19.020,2:10:29.900
If you can get to a point where you can rebuild those notebooks from scratch without too much cheating,

2:10:29.900,2:10:33.500
when I say from scratch, I mean using the fast.ai library, not from scratch from scratch,

2:10:33.500,2:10:41.840
you'll be in the top echelon of practitioners because you'll be able to do all of these things yourself

2:10:41.840,2:10:45.620
and that's really really rare. And that'll put you in a great position to part 2.

2:10:45.620,2:10:54.980
Where do you see the fast.ai library going in the future, say in five years?

2:10:54.980,2:11:02.160
Well, like I said, I don't make plans I just piss around so...

2:11:02.160,2:11:16.900
Our only plan for fast.ai as an organization is to make deep learning accessible as a tool for normal people to use for normal stuff.

2:11:16.900,2:11:26.900
So as long as we need to code, we failed at that because 99.8% of the world can't code.

2:11:26.900,2:11:33.080
So the main goal would be to get to a point where it's not a library but it's a piece of software that doesn't require code.

2:11:33.080,2:11:40.320
It certainly shouldn't require a goddamn lengthy hard working course like this one.

2:11:40.320,2:11:42.420
So I want to get rid of the course,

2:11:42.420,2:11:44.080
I want to get rid of the code,

2:11:44.080,2:11:48.980
I want to make it so you can just do useful stuff quickly and easily.

2:11:48.980,2:11:52.680
So that's maybe five years? Yeah, maybe longer.

2:11:52.680,2:12:02.300
All right. I hope to see you all back here for part 2. Thank you.
