Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C61E8850
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B36AC885C8;
	Fri, 29 May 2020 20:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocME7GftTMdC; Fri, 29 May 2020 20:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB9BB884E9;
	Fri, 29 May 2020 20:01:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FDC21BF9BD
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AFDC8849F
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PQCy3MvTPgW6 for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:01:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C3F5883DD
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:59 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N2E9Y-1j0dym29Bm-013cyq; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION dependency
Date: Fri, 29 May 2020 22:00:31 +0200
Message-Id: <20200529200031.4117841-9-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:L0tAuZKqS3GUSyinflTIVejQer/+gUpZEMrHiizAn10eYDwYWoP
 ee/FEolfmeLefXoBmI6xD3EMOEsLS73UAjlN5kU0b9Hnbu3uEmAntK5dpuzgQzzWjgQ5+uA
 dCKcmC7jc3MIX9nWCN1NeMpHfr3M+gi9M73jO9QP/9K6UURab9n8KHZ4TAsN88OPAAfDQ56
 fMA50/pxymZgPMFMU5egg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:n8lBOdB9moc=:gkSwrbVAcyBUdJIk/gy8rt
 z4c67AMI2vRcR9vlmbSsMYc2KDn2J0UfzfG5FHt5lV4uAjGr7+F7uTpeYrWn7uuL8g62oXTYy
 wBS7GN3THgQGHnI000soH0B2bOv2ERsfmkRjoVyjy7VlMrD28yDfI8ggaL850JAUxlurig8qG
 Gi3In92t6AC0XHB2dqYU31gz9zgdlKY9G1KjywOjaWXUNC2OvFa1Wz4brx5h6zJrTkJEwlS0E
 SSazvtRsynsPhxjYr5MuWibi1uWq3eN5kprruDdVOpmCxdOC/5mxwcb6XbpJFMyoGR3VTURo7
 PxDqwMD3d5RHWSkXyQHnZjWG3IWDQmeJZ861rwbf+NC3PCDe+X1wu1nTyXbMAtjQPjErjfSzo
 sK8KrpqE0Fgh8sCTVPHR8sH3Xb/iDDMfAJPE0ygxhqgjPuV0GsoXj3AtAUP739N0ok7CPh2YF
 /sybDxaavuMv1Zcj3p5Rd4411Z98rhY+mdgoYbWis+E6LkzAHNlKiCRj2WaFiPP3ZIC8aTzzj
 sj1izhMZWloGLOg0PwaPB7qcPnFaJ6wKL1GyJUdlC/8bva2Q/wBc7GOWQ/DrhFkkBiHYb2L2k
 JW3IcVYw+C62G9cgdkao6qQRnLjcXqmQQ0xTfXfRFbT3mSzwxPImNc9ZMB94ozM7wzTZttrXH
 RLx7iwwwOD6ut5hmCkKPms2ieS1ujXE6B04Ab7C1jvAf9JdTQDeTq/rftQndTYIUbnjfJxHuk
 TFtJJNj/3xJyLbTYEHF2qLvZNNPFG7/rWTf14k9YzjDmE/q7D1sZ6aAVLhv6cRR+j216RnzDa
 7gCKpfl8V4yXUtDX/VUorCL6JpIiG89ES774k7f5HLZnpeMSjU=
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

Without that driver, there is a link failure in

ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
[drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!

Add an explicit Kconfig dependency.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
index c4f3049b0706..e86311c14329 100644
--- a/drivers/staging/media/atomisp/Kconfig
+++ b/drivers/staging/media/atomisp/Kconfig
@@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
 config VIDEO_ATOMISP
 	tristate "Intel Atom Image Signal Processor Driver"
 	depends on VIDEO_V4L2 && INTEL_ATOMISP
+	depends on PMIC_OPREGION
 	select IOSF_MBI
 	select VIDEOBUF_VMALLOC
 	---help---
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
