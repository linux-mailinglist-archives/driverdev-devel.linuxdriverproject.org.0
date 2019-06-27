Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17258A4E
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CC1686311;
	Thu, 27 Jun 2019 18:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TI7n0AOYoHOd; Thu, 27 Jun 2019 18:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC9D885DDC;
	Thu, 27 Jun 2019 18:57:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EAB91BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C22386355
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2m2kSCNrRWy for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBCBC85DDC
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661810;
 bh=oLnjN52EnE2DOibkkrUsKEoboTm6occkriot7kdGOWc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RKnMp8hZU20lqiGxc90wHuETi2g7AFvuAAL5zIuDEPG/xvXcauzV4BWngTwdUBrhi
 2ttIZA9hw6yppVjT2JG3TZ6Iu21B+AFb9ZuFs7mfUR6RIlhMfbeD9BRsrsm1yGOjsR
 1HMbqjQIbe5RyNDaTVFamsu+SeiBK0RqPZZrV2cI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LnwxU-1iDhT01mrA-00fwPr; Thu, 27 Jun 2019 20:56:50 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 05/31] staging: bcm2835-camera: Correctly denote key frames in
 encoded data
Date: Thu, 27 Jun 2019 20:56:02 +0200
Message-Id: <1561661788-22744-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:yZ1iRnEdO/zCVfwT0Jup2xWKW1hJcfyIxLMQ6raD3e/K42260gg
 sJpGrJ9+VGPSRXyTOiZV/d6DuJ4Wf/px0uBMNMxghtmP3CuyqrlKknImVks1Uj/B1hc+vW5
 Y0H4pBYw972XKbYWN+acwiqOMebVNZuqnakrfrU5q4IpA0DaKZsOtA320Pef0MDCGSj4PT5
 eNUCvM/AZzIoFeXkTllXA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:E9CXXj22YFg=:npWE8aj9lMTYCPhz1hA5Io
 LX0cFJTv2+agRUQfFUqMJEsx2bNaMgp8eGLcRj4ByUfpm3RtOwmfiwUrAfOQg5E14cA4w5lxL
 rvkkjvv1aT9R0wR7r37gMgTMTK+8SKFu7Lml1T+mba3A9ReUmfh35g8uo9hRhlA+SkzwvCpec
 WCIcaCPiCvyv6fbxJ+UT7UcZ5OqCiWUvO9Eh8z5LakYDwdLB1s0u7wivt7/+RpvVHTguVlArI
 qHtAwyVapFpmwpON74e31ClJIZyiYzDWVh2Tgixkbz/R2s6oEOKnji0nTPIYKxNoTShRrhFz1
 3xZLANtdfI0kff3F5qrt/Tqp61WmPW7N2R+KDPD48b9PpGRBKttVgQs/1GvAf0jYFMpvVl9Um
 rfKGHBXXPi3fIC7Q/Xg/dOIUkOSleSfVCARvmU4Vbcxiz8OdGSUM9Okqc+cGa4vAMV+A9zgG+
 aYsZVJCDh7IzwqDozUyh0ZkgoWG9YyJ8QaxfmI5fjmFUs418vtSG5eUrJliXZ0QSsk0cTOzO8
 2WvnxR4N3XrankAlMpa6Lep8BbGAN/MUyL+Co1dsjG0C/+akbITiLrAo6ozCjvWaMJE458ppP
 nf5kYjSvf6BQ8J5d7WAsu6isrmrphaRKn/ZJU//IKgJnnkWOsqZVUY5ha/kPTJR/p4VvLGOvq
 I30ljE6IGwk7710rOPqU92Sdz6WNVID5ieILU+YU4PY8LjwNZqDxh6K0Qs0Ezhav++K7oLKhI
 AM/2AxEubOPp3eECQlSkllQ7hYDGCM3A3QJK40Y/qfKYY2Y+IBziEY0AXn8tYxK86r92wWN/e
 ZY1Jcpy8Xfr+tE3uA3hlwmRSzHzY554vX8MunfkpXMuLXEuXsoz66n0QFiKKLx1l3M9JsQ4sG
 TW0S3L/uOp3P8J97IJuAeBkzg5zYtNYR6ejQJBJvHtPKpMbuxdoCIcPIA94esWW1G53CmUXR9
 A1gPI1yqXZPrXFepimiLXJ7paDr3hq2ICSOEwJoPi9T1laDLMIhN6jHBzgNimUg5i1mtz4iZE
 Owy4H6DzwYUS9H4m8WBTP+jg1iD3dbzHZeHY7wsFwkZ3oAY9e0bN+T20/FMCs4aZCkwdAD+DL
 ziEj/D0cdINm34=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Forward MMAL key frame flags to the V4L2 buffers.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 0c04815..456b686 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -385,6 +385,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;

 			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

 			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
