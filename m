Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B3FF9D84
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 23:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F92D86186;
	Tue, 12 Nov 2019 22:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AXJlqbOwqVbs; Tue, 12 Nov 2019 22:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AF5585608;
	Tue, 12 Nov 2019 22:54:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD7761BF2B7
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 22:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA56B83500
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 22:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpW3z1NanP6I for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 22:54:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3890C834EE
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 22:54:38 +0000 (UTC)
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF66F21925;
 Tue, 12 Nov 2019 22:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573599278;
 bh=6JP0GOFxXqz7uPi1zfAbz6zNkUOAnyg5Tm8bHnXJUNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jZ3b0wvEkm+nOC8NXFdRzToZmE2dq9r0zUsUI6Jei7b8C/0acFa9LkaFNn8F8sidU
 Y2JcsEHYazghknsDDPWlpUE89PhqGBTIDyqg6+FZht7Daz7X7EkXgTuwQ8QGpB1KcB
 GBzucF3QA4pqmlV2+MC2tnvICriZfOgCuJMKzMXI=
Date: Tue, 12 Nov 2019 23:54:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: [PATCH] vboxsf: move out of staging to fs/
Message-ID: <20191112225427.GA1873491@kroah.com>
References: <20191110154303.GA2867499@kroah.com>
 <20191112063440.GA15951@infradead.org>
 <20191112065629.GA1242198@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112065629.GA1242198@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When Christoph said this code was "good enough to go in now" I thought
he ment to put it in drivers/staging/ for now, when in fact he ment to
put it into the "real" part of the kernel instead.

So move the code to the "real" part of the kernel as it's good enough.

Reported-by: Christoph Hellwig <hch@infradead.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---

Christoph, this is what you mean, right?  If so, I'll send this to Linus
later this week, or he can grab it right from this patch :)

thanks,

greg k-h

 MAINTAINERS                                      | 2 +-
 drivers/staging/Kconfig                          | 2 --
 drivers/staging/Makefile                         | 1 -
 fs/Kconfig                                       | 1 +
 fs/Makefile                                      | 1 +
 {drivers/staging => fs}/vboxsf/Kconfig           | 0
 {drivers/staging => fs}/vboxsf/Makefile          | 0
 {drivers/staging => fs}/vboxsf/TODO              | 0
 {drivers/staging => fs}/vboxsf/dir.c             | 0
 {drivers/staging => fs}/vboxsf/file.c            | 0
 {drivers/staging => fs}/vboxsf/shfl_hostintf.h   | 0
 {drivers/staging => fs}/vboxsf/super.c           | 0
 {drivers/staging => fs}/vboxsf/utils.c           | 0
 {drivers/staging => fs}/vboxsf/vboxsf_wrappers.c | 0
 {drivers/staging => fs}/vboxsf/vfsmod.h          | 0
 15 files changed, 3 insertions(+), 4 deletions(-)
 rename {drivers/staging => fs}/vboxsf/Kconfig (100%)
 rename {drivers/staging => fs}/vboxsf/Makefile (100%)
 rename {drivers/staging => fs}/vboxsf/TODO (100%)
 rename {drivers/staging => fs}/vboxsf/dir.c (100%)
 rename {drivers/staging => fs}/vboxsf/file.c (100%)
 rename {drivers/staging => fs}/vboxsf/shfl_hostintf.h (100%)
 rename {drivers/staging => fs}/vboxsf/super.c (100%)
 rename {drivers/staging => fs}/vboxsf/utils.c (100%)
 rename {drivers/staging => fs}/vboxsf/vboxsf_wrappers.c (100%)
 rename {drivers/staging => fs}/vboxsf/vfsmod.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index eb19fad370d7..069dc018073d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17342,7 +17342,7 @@ VIRTUAL BOX SHARED FOLDER VFS DRIVER:
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	linux-fsdevel@vger.kernel.org
 S:	Maintained
-F:	drivers/staging/vboxsf/*
+F:	fs/vboxsf/*
 
 VIRTUAL SERIO DEVICE DRIVER
 M:	Stephen Chandler Paul <thatslyude@gmail.com>
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 927d29eb92c6..6f1fa4c849a1 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -125,6 +125,4 @@ source "drivers/staging/exfat/Kconfig"
 
 source "drivers/staging/qlge/Kconfig"
 
-source "drivers/staging/vboxsf/Kconfig"
-
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index f01f04199073..a90f9b308c8d 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -53,4 +53,3 @@ obj-$(CONFIG_UWB)		+= uwb/
 obj-$(CONFIG_USB_WUSB)		+= wusbcore/
 obj-$(CONFIG_EXFAT_FS)		+= exfat/
 obj-$(CONFIG_QLGE)		+= qlge/
-obj-$(CONFIG_VBOXSF_FS)		+= vboxsf/
diff --git a/fs/Kconfig b/fs/Kconfig
index 2501e6f1f965..a6b57d790100 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -321,5 +321,6 @@ endif # NETWORK_FILESYSTEMS
 source "fs/nls/Kconfig"
 source "fs/dlm/Kconfig"
 source "fs/unicode/Kconfig"
+source "fs/vboxsf/Kconfig"
 
 endmenu
diff --git a/fs/Makefile b/fs/Makefile
index 14231b4cf383..aecbb088be47 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -132,3 +132,4 @@ obj-$(CONFIG_CEPH_FS)		+= ceph/
 obj-$(CONFIG_PSTORE)		+= pstore/
 obj-$(CONFIG_EFIVAR_FS)		+= efivarfs/
 obj-$(CONFIG_EROFS_FS)		+= erofs/
+obj-$(CONFIG_VBOXSF_FS)		+= vboxsf/
diff --git a/drivers/staging/vboxsf/Kconfig b/fs/vboxsf/Kconfig
similarity index 100%
rename from drivers/staging/vboxsf/Kconfig
rename to fs/vboxsf/Kconfig
diff --git a/drivers/staging/vboxsf/Makefile b/fs/vboxsf/Makefile
similarity index 100%
rename from drivers/staging/vboxsf/Makefile
rename to fs/vboxsf/Makefile
diff --git a/drivers/staging/vboxsf/TODO b/fs/vboxsf/TODO
similarity index 100%
rename from drivers/staging/vboxsf/TODO
rename to fs/vboxsf/TODO
diff --git a/drivers/staging/vboxsf/dir.c b/fs/vboxsf/dir.c
similarity index 100%
rename from drivers/staging/vboxsf/dir.c
rename to fs/vboxsf/dir.c
diff --git a/drivers/staging/vboxsf/file.c b/fs/vboxsf/file.c
similarity index 100%
rename from drivers/staging/vboxsf/file.c
rename to fs/vboxsf/file.c
diff --git a/drivers/staging/vboxsf/shfl_hostintf.h b/fs/vboxsf/shfl_hostintf.h
similarity index 100%
rename from drivers/staging/vboxsf/shfl_hostintf.h
rename to fs/vboxsf/shfl_hostintf.h
diff --git a/drivers/staging/vboxsf/super.c b/fs/vboxsf/super.c
similarity index 100%
rename from drivers/staging/vboxsf/super.c
rename to fs/vboxsf/super.c
diff --git a/drivers/staging/vboxsf/utils.c b/fs/vboxsf/utils.c
similarity index 100%
rename from drivers/staging/vboxsf/utils.c
rename to fs/vboxsf/utils.c
diff --git a/drivers/staging/vboxsf/vboxsf_wrappers.c b/fs/vboxsf/vboxsf_wrappers.c
similarity index 100%
rename from drivers/staging/vboxsf/vboxsf_wrappers.c
rename to fs/vboxsf/vboxsf_wrappers.c
diff --git a/drivers/staging/vboxsf/vfsmod.h b/fs/vboxsf/vfsmod.h
similarity index 100%
rename from drivers/staging/vboxsf/vfsmod.h
rename to fs/vboxsf/vfsmod.h
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
