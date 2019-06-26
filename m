Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 867D756724
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 12:48:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C04FE86802;
	Wed, 26 Jun 2019 10:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TU9ryOMlxI-4; Wed, 26 Jun 2019 10:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5217686739;
	Wed, 26 Jun 2019 10:48:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70B121BF3D8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 10:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B29A860BF
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 10:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44bxpcB0-b3w for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 10:48:28 +0000 (UTC)
X-Greylist: delayed 00:05:23 by SQLgrey-1.7.6
Received: from mx08-00252a01.pphosted.com (mx08-00252a01.pphosted.com
 [91.207.212.211])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD67B83365
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 10:48:27 +0000 (UTC)
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x5QAbsK1019577
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 11:43:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=pp; bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=w+pX53jhDrcg3Ri331gchgt0yH/PHyxd2zMjzKNDFaSZDyyWfYtLefI8a2BSffZYtP5E
 cmeHcyZ6Qd036b5eukQztS1xWPm6rs3f17ik+8lMHrX9d6m5mr41B/iabxb8F/7cMP2k
 NHSEB7DObJV8GxTCk3ACUhu8h9X4RcCzaY24xuJ8TGqM6rm555wyFaiP1kj3FvgarZEZ
 4A+r2m+muouchXkuY1MmVLEiz5uTuFLxT7dwzT2gOBi4kkX0+dMQKMdevsViAvZj3Md5
 +9sSNv63e68ypQJ0zaNSZl3zRKiJ5LZH6Sr+BDtOrnmDcVrbGyXoDXvrAxL/lvVOhvIr 2g== 
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197])
 by mx08-00252a01.pphosted.com with ESMTP id 2t9exhj2sh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 11:43:02 +0100
Received: by mail-pg1-f197.google.com with SMTP id w22so1369568pgc.20
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 03:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=B/5z55lee914sGMzs/ZjBxJ62Uul/d0vYZNRY/Wr4ucoBuxrZsHuPxvN9T+JO4AXk7
 Zl7tQBBY9ZmSx/POB3pAPLHlcjl5K+ZpJHvRYPhXPc0Dx3pMiGsEpTTpbvHnKUNMv/HL
 ADchEiRObMQhpTso1YNwrdaP40XtIWI9e5wLXwxxUYrVjZabC0vOOiMofnpmrF/FDqwf
 ZvWJh4ye3oypogexs/hOaHSw+llPhO7btJEKSrME3ZjU5TxQhfrMkPtIfJO69lD29YbX
 Y0wiYZoWSagYjBOvbFcskj08AcE326EPLEv5mq/tcAp3mPIICh9Qb+NeChw+428/fLxC
 FuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H72M3+PWhw9sOunRiDpxWoNo9tqIHCGVsvvEbNV2cac=;
 b=imwHpsBxwWPB3AG6egq7AJiUAoyvuu2nGoIfEl9fg33hVXMUeGowG+eJ9yveLuPZXT
 9k09UTHSDD8/IIqesNWGdSObfFwXMBSa6/B94SYufPL/kWj055SPwCyphwnVq+Cgv7NK
 vAmSiLFn1JJXoBAicP1ZRYEzumK8lawDgtTqkfic8VRwUgV8rtzlBQRpkUyNfqDthTJL
 PYO+X3Tqe35J+uMcQ6tvYRMKBTR7NZV3rjx1RTTGAIYNez9cX424MvTAsRZeAw2rafdW
 YF0QCmXzAd6sX4j6CKRLypzNbS+whjtAMTJSjNWv7tE42GyZlzFw2dB1vNBugl6K4VG/
 kjqA==
X-Gm-Message-State: APjAAAX3XWGfWrUfKZ+lA/RjkCSrR3rrMVp4Li/zCJ3Y892PPZvzlmcn
 ub+G+LTaNQRXkVd4zI9sWcRS5eIKhgDLxKUHmVJPMyNWHcX/M0z87PHXCAZFzmdZK6izf/UcbT+
 +427gfV3GjggYQhbypRLIan/O4nn95r6RxUnX
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr4575666plb.115.1561545780333; 
 Wed, 26 Jun 2019 03:43:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoaspFcX9aLC1AUlC3zgQFeLmLLAxDawSBjp3KT5SgiRv/Vh6vP1KZavG5puO6oi4xjZ2lUwREVMgGnN7C3ks=
X-Received: by 2002:a17:902:296a:: with SMTP id
 g97mr4575640plb.115.1561545780096; 
 Wed, 26 Jun 2019 03:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
 <20190625075558.GY28859@kadam> <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
In-Reply-To: <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Wed, 26 Jun 2019 11:42:46 +0100
Message-ID: <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Stefan Wahren <wahrenst@gmx.net>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-06-26_06:2019-06-25,2019-06-26 signatures=0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Stefan.

On Tue, 25 Jun 2019 at 17:30, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Dan,
> hi Dave,
>
> Am 25.06.19 um 09:55 schrieb Dan Carpenter:
> > On Tue, Jun 25, 2019 at 12:13:15AM +0200, Stefan Wahren wrote:
> >> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> >> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> >> This breaks probing of bcm2835-camera:
> >>
> >>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
> >>     Cleanup: Destroy video encoder
> >>     Cleanup: Destroy image encoder
> >>     Cleanup: Destroy video render
> >>     Cleanup: Destroy camera
> >>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
> >>     bcm2835-camera: probe of bcm2835-camera failed with error -3
> >>
> >> So restore the old behavior and fix this issue.
> >>
> >> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> >> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > I feel like this papers over the issue.  It would be better to figure
> > out why this is failing and fix it properly.  -3 is -ESRCH and when I
> > grep for ESRCH I only see it used in the ioctl so that can't be it.
> >
> > I think it must be -MMAL_MSG_STATUS_EINVAL actually, but it comes from
> > the firmware or something so we can't grep for it.
> yes this is a result from the VC4 firmware, there is nothing i can do
> about it. Even the firmware has been fixed, the driver must be
> compatible with older firmware version.
> > Can we do some more digging to find out why it's failing or otherwise
> > we could add a comment.
> >
> >       /*
> >        * FIXME:  port_parameter_set() sometimes fails with
> >        * -MMAL_MSG_STATUS_EINVAL and we don't know why so we're
> >        * ignoring those errors for now.
> >        *
> >        */
> >       return 0;
>
> I will add a comment and a v4l2_dbg entry.
>
> @Dave
>
> I used a Raspberry Pi 3 with a V1.3 camera and get this with an
> additional v4l2_dbg in ctrl_set_bitrate()
>
> [    1.472805] raspberrypi-firmware soc:firmware: Attached to firmware
> from 2019-03-27 15:48
> ...
> [    7.441639] videodev: Linux video capture interface: v2.00
> [    7.511659] bcm2835_v4l2: module is from the staging directory, the
> quality is unknown, you have been warned.
> ...
> [    8.162504] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.163104] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.163624] bcm2835-v4l2: Set fps range to 30000/1000 to 30000/1000
> [    8.164395] bcm2835-v4l2: mmal_ctrl:eecd7187 ctrl id:0x98091f ctrl
> val:0 imagefx:0x0 color_effect:false u:0 v:0 ret 0(0)
> [    8.164493] bcm2835-v4l2: ctrl_set_colfx: After: mmal_ctrl:1ec18e37
> ctrl id:0x98092a ctrl val:32896 ret 0(0)
> [    8.165413] bcm2835-v4l2: ctrl_set_bitrate: After: mmal_ctrl:b01a3b48
> ctrl id:0x9909cf ctrl val:10000000 ret -3(-22)
> [    8.165872] bcm2835-v4l2: scene mode selected 0, was 0
> [    8.166249] bcm2835-v4l2: V4L2 device registered as video0 - stills
> mode > 1280x720
> [    8.166596] bcm2835-v4l2: vid_cap - set up encode comp
> [    8.171208] bcm2835-v4l2: JPG - buf size now 786432 was 786432
> [    8.171220] bcm2835-v4l2: vid_cap - cur_buf.size set to 786432
> [    8.171228] bcm2835-v4l2: Set dev->capture.fmt 4745504A, 1024x768,
> stride 0, size 786432
> [    8.171234] bcm2835-v4l2: Broadcom 2835 MMAL video capture ver 0.0.2
> loaded.
>
> Looks like the firmware dislike val:10000000
>
> Any thoughts?

I'd had a quick dig yesterday, but forgot to hit send :-/
It looks like the firmware is getting upset over the ordering of
things in setting the default bitrate and the bitrate mode. Setting
the bitrate mode to the default of VBR fails (return code is ignored)
as the bitrate is 0 at that point. Setting the bitrate then fails as
the firmware default mode is "disabled" (ie specify the Qp
parameters).

Setting the bitrate is also done via the MMAL port format when
enabling the stream, so I believe it's only the setting of the default
values that fails.

I'll sort a firmware fix, but a comment here along the lines you
propose is definitely worth it.
 /*
  * Older firmware versions (pre July 2019) have a bug in handling
  * MMAL_PARAMETER_VIDEO_BIT_RATE that result in the call
  * returning -MMAL_MSG_STATUS_EINVAL.
  * Ignore errors from this call.
  */
  return 0;
(apologies for the formatting).

  Dave

PS Is linux-rpi-kernel actually behaving for other people? I didn't
see this patch when it was submitted, and it isn't showing in the list
archive either.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
