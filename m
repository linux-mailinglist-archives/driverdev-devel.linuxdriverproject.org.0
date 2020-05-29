Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 894B91E8848
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DC348857E;
	Fri, 29 May 2020 20:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5xvM7kzmLzZ8; Fri, 29 May 2020 20:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66ADF883DA;
	Fri, 29 May 2020 20:00:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229E41BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F7A6873DC
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnJb3AJM9Kiw for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB5FC8735E
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:52 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MryKp-1jAuTP0z7F-00o1uJ; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 8/9] staging: media: atomisp: disable all custom formats
Date: Fri, 29 May 2020 22:00:30 +0200
Message-Id: <20200529200031.4117841-8-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qJ+Rt2kztW50CUtyGkYL0hFqj3O3Tr4F/pY389rx0O6o6EIN8vC
 1lCEbUfSh8FP7dkPqxLoITkuB6a10nWMuZak7qSz7LgZdyHDIgSAr52nLeV0cn1dTs/hNmJ
 qpzPc94azOr/MuKJcOKoEoEreNOP6BcKL/2tOmAOeoWEyF8UcVfW7afpZWrgtQDdl/P8taX
 kttbZO/XccamWEPS4281w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:prz40u1jyDo=:zd1Jik3K+y7oBmpr6xyGwg
 rqYC7cD7GAinKwyfFDLJIzNdgZF+PStBCYdWKfM5Z6l1JCPDhCUHVnLV4kiOdEFBxeTqB78pg
 gQscXGQ4I1kkKkbWmu3A5RXK1lgcBmO7f4tCGOrqewtuMXbxEDNpfXOIla0EEbOzT1TJYnGe5
 r0aR1aew/b5GJA6z2iIErBg9aKsA4b+lhCBa8FSVUwvRyWZmAAK6Sod/CieWy00ypIU4R5wYJ
 aM02E3XARxdVyoO2wTVJwupb5q58h6zJaWWJrZeK8Qn09C0KCp6iaClxza2kS3mVW753gVhzK
 UjlVi4Dtm3C0jZj2hFWZgOhI5T4GgZ90gsnxs2d0lgiZRKn5pcsckU6J0shqp6y1brOOn/2u0
 Q+VqH2unQnN+jF63VGLrP11UVPZhe90/IqiqGNYdjy4W/4643JQ9JRVCoKilzzO/tNSAUVCmG
 IFlWjPlQZZGM1Xu6gboffg4AEiLlif2lZUrclbEkt/4JIoYGFsBAzZNpk72+LDXLWTm652cg8
 hnIs03JuPbvrkX0fp1zdiUdF7S/1JQglFnN9SqAUVHeqqw9U7rnIbw+jU85EdUpXEjd73jQ5q
 3+2K+fLUWSMk5qfkM3TzKmC6vPAw2mzMXQT0ABG7C8lhaqwgTqZMQ0gm6n035cS7SlSWXSOuQ
 B6Pau3rwH/1qFuy1MzPYO81nXGXbi1WqTw1wzuOaDqqwCPWqOETJOtX+7kkBl44gRlPTSJeli
 yDXdFSOOgvmXkrhHbdA3kqW6M5AHeTvk5ZVl+rl8jPMKhUGAGiriyNnIDbBoxlvOpQOFP6LOu
 KNxy5bpYKsuiX9yru/eXvNTldOwCCnQX4e3TKLvMpMDLVoeCmQ=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

clang points out the usage of an incorrect enum type in the
list of supported image formats:

drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },

Checking the git history, I found a commit that disabled one such case
because it did not work. It seems likely that the incorrect enum was
part of the original problem and that the others do not work either,
or have never been tested.

Disable all the ones that cause a warning.

Fixes: cb02ae3d71ea ("media: staging: atomisp: Disable custom format for now")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 46590129cbe3..8bce466cc128 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -44,9 +44,11 @@ const struct atomisp_in_fmt_conv atomisp_in_fmt_conv[] = {
 	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_12 },
 	{ MEDIA_BUS_FMT_UYVY8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
 	{ MEDIA_BUS_FMT_YUYV8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
+#if 0
 	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
 	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
 	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
+#endif
 	{ V4L2_MBUS_FMT_CUSTOM_YUV420, 12, 12, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, 0, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY },
 #if 0
 	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
