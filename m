Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416845AAB7
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 963838821D;
	Sat, 29 Jun 2019 12:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBxtNnMVb1lD; Sat, 29 Jun 2019 12:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A809881A0;
	Sat, 29 Jun 2019 12:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 662331BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6368685E85
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qatPit6FY6Xz for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65F3885DE1
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810446;
 bh=uI34PuI3UJ0Vj23e0pDBUSO4cLN7Oo++ZU6cixLGgXw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SjIitINHyMg6SZR64Skt58IF/o6+kV2ls+Cv950gThHPA1jbALXeS9f7tLGRQA2jx
 pWqMIfspO6jvW7HC9h+xsVkrQ9lc258u4OnI9DK4wYM6pEgiDqW9hEZVJy9eVV/u/c
 9tvkT90fTNO/BTz9ff4JTuJlJShWSaKU6vcl9Qkg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MHXd2-1hiIhW0fMK-003JgE; Sat, 29 Jun 2019 14:14:06 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 04/29] staging: bcm2835-camera: Correctly denote key frames
 in encoded data
Date: Sat, 29 Jun 2019 14:13:19 +0200
Message-Id: <1561810410-8829-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:vR8+uZhLA2j/tuReY3aykspH3dP08vrGsexgtNEW51mDQw81J8K
 +IrnB6W3LJVdLHToFBbZQGVW8m5mJ9Ooepo0XlWWwdQPZrpUkyha1IFm4eO6yuArbLD7bdr
 NPXP8yVpBopUwHmX68UjmGCS5kjRecqLDbZf6lBXEWLI6UIVPqjtMghk4nJ/PWAb0mbTnVy
 fuq/uFP/xnPqevb2YzTQg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KSLK4Th0A+Y=:QE+5OUbIelXXaeaU5XjFx1
 a2lPLeh3S9Kot13XHCNMsNaQTPhsreUM4vFTyFQUlqwQieSGRlNYNdO4hHsJ5j3NxOfrdlFIk
 phhet2buIn/k2WtbT52sJSIxz5D3K5yVQEm4BDSP5eLEh+JyEGvs4EIHJs83K4ELMKhOuZXWP
 e2pSKmfPTh1d9PvDRkvla/uYkXz/fpVVo1fPfXFgJl6kxkgGOk7def7U6oLb954V02SG+EO8Y
 /4Bz3NoZB+gaIHGetKtEwaXpsvxp7qQWp+5uQMMOPj4GgZoJSWzP1cVzxgE5tmkkz5NEFRhnc
 I0TKRJwB7YSSLTWrfAQJntgDFxyWnlpwLobj6icVqw7PLCRhtbcTOhJHbrKc5ZpUckdH3Kzed
 tefOvi5aRoZ2OIKdWnPUhxr4SL5FEUaoNLvFrimPCRl7nASm3/41bcc3p58fB8M3zMTBQ0BWL
 9AaTDauOAp7boPYfzXGU5yaAcV/5eW9rU++pDYi+gAYu2JP9u0hyjOPhpGnsvLXs9GwtmmreC
 osbWIY0TofRJDSuhuuHCRsyIhpm+jT4AiIjS6+Vd1bCVOq5+3mroi5IMGBH18+rzsUQqEVcXs
 jFnM6/vpGckEFUVeIGmetGSIBc/Xbg5CGyM3wJg4Xg+DjBkqcIA3/QGtlJ/iDOWYFjS0IZ9G5
 6sLhkydfYxm/HNTrCeBwSjpOYg8wzySwqzc6zhBoSD4g7rJcTeSCfg0ubV4P1kpuPHnHDfLyN
 uVZo4NaTqoYGiAPTLEcNUTI0zyP+sq1SUbXIcEAizrwn6q+7htpIOPavZ2JtHjtTh5teOCmV9
 X3NYMGXcn6YKcg3lSufotEpO6f19zUeggN5GX9ukSjZEA28ff5eETh5vh6usTiaj4B3LhG7v8
 TAFFuXCxsh+VGb7ee/uEXSyMOdBitjlCBDlCSwOhvmy4juu+lzivY4UNpzubBlQUV7tEpDmGk
 OEDQpx8K5grJGUWeilm6TZbWUfqm5p/CKnfzurGVIOvFlpy/GO+4EYrOEEbbDuUAYcwzS2mEk
 rrnTg2A1Knq0971l8AgDoxHnIBv+1/gCnjM9BzC4lPryKStXv3bU9mlc/wfumPanuOPwNmIuS
 LU5EfWL+hZpHVY=
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Forward MMAL key frame flags to the V4L2 buffers.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index dce6e6d..e81d4df 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -376,6 +376,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			}

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
