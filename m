Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEDC1E884B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23BCA22177;
	Fri, 29 May 2020 20:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yv1l+nEjFuW; Fri, 29 May 2020 20:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 571F520394;
	Fri, 29 May 2020 20:00:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8003D1BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F53220394
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYRPnJMxQVRM for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id A2E1420390
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:52 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MyK9S-1imwbt0Oxo-00yeuk; Fri, 29 May 2020 22:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 4/9] staging: media: atomisp: fix a type conversion warning
Date: Fri, 29 May 2020 22:00:26 +0200
Message-Id: <20200529200031.4117841-4-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qWBqLiHAEPDMF8js3BlDSPtIsv7NefuRl9Ih3YXihEz3ytqwK7I
 95pwIVpN2VK2c6MErMz1nU1mqoSwXJZ4oreJOy0xL2phOWMHcUrB6rNLLn3e/qEBBzYsS81
 tCgb/sdTaV85b0SQpiut7Q2R2d230ZF+dUvb77YsIW7R1Uz+1iRLVu9ZEj+sAJOEKZN3QeP
 Y9Z7KixTphCsicYvRwfpg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ElPwMuZ6EYA=:0afz9AlQbCrElA4/wPvPtt
 I8ZVINFuuOu0sb0PG4sb88XGYuSFmLYxK911LA6eDkfXasPoS5F0s+NL6Fcg4ExHQIMpOijg4
 YBr0uyt7M/yh+nEFrnEmk60iNgmBumR4US/B+RrKhJ4wLeM73A9MU7OcAhRegL4sdtQhO1B6l
 Nls2QL0fKd2PBW0R/IDTen/u0pfGjJ7AW0eW/022wQaW7dpHKCXqgwFbORCECWTjAkZNgXK8s
 RioqNoWlKhifzzPbSSFw0zg0TEtL2xoa8bCICFUjV9k1AFHhJrii1aj8VJUUG+IhGcrCxpg7R
 8b1nABsEqSYDyb1aQU1IZsklEjVEOip6Pa0XV6qzLYxIlMaMLzNnsLG0js7E8VvLkxkQuNZJL
 BoQ7DayVfuIkT/iA/xioZ9xSUzJy3Z0KCoX7KQzWFWe6tFdtS5h70i3xlZ/068EAZJeWuy1mx
 2M59u1tri8c8dJpM54fAJQLixVfN91s2DkEO2z7GimRUaIulBeUH/XxZX4jysiiJAZf4UecCQ
 vRyja1RjxpbWLDX/WPOc+Jus3RKAnleTwgHjJ+FHUnQMT4dH+gNhxzGq0T9Ft17w0q3YuC04s
 x+SIvCPSzL799skAtJDgxPqKuXyOScaj/SldgErWCTrpwEFDuSIMUo70DOGsHh+XGwus1gk5n
 K7hfDKlSvK9TA3wBueZX1Puke5NcxdlXFt5z+kG1ZI6vLiSi1W16RSAdXdeDn9MRqXGTKt36d
 21eLKPhNBs88rTvd8mnZjBT7Q/Dcwcys8bhN4wFy7n1leMS0otcgwuFd4JzrrLcXBV41TTMHw
 q2n7yBgknNPAruPsYYXpqqrDRw35/ewn//GLRvDMyVE1/UF5i0=
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

clang complains that the type conversion in the MAX() macro
contains an implied integer overflow to a signed number:

drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:129:35:
error: implicit conversion from 'unsigned long' to 'int32_t' (aka 'int') changes value from 18446744073709543424 to -8192 [-Werror,-Wconstant-conversion]

As the conversion is clearly intended here, use an explicit cast.

Fixes: 9a0d7fb5ece6 ("media: atomisp: simplify math_support.h")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index a9db6366d20b..613bace0522a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -126,7 +126,7 @@ compute_blending(int strength)
 	 * exactly as s0.11 fixed point, but -1.0 can.
 	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
-	return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
+	return MAX(MIN(isp_strength, 0), -(unsigned int)XNR_BLENDING_SCALE_FACTOR);
 }
 
 void
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
