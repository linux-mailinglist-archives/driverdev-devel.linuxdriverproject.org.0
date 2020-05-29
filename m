Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4181E884C
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4272389428;
	Fri, 29 May 2020 20:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdNziXonx6Uq; Fri, 29 May 2020 20:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6EB5893FA;
	Fri, 29 May 2020 20:01:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27B881BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B898873DC
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOnunMPlLiUt for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B366587565
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:56 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MkHEN-1jGNZx1rr7-00kj3D; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 2/9] staging: media: atomisp: declare 'struct device' before
 using it
Date: Fri, 29 May 2020 22:00:24 +0200
Message-Id: <20200529200031.4117841-2-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TarMTBYqeIin+lnZ4LmtumzaUlpm/qpb9KM44D2gAllthm2qRrv
 sC59cp8NfYINafBl2Vdc62hWHo8PDCDo5gs0KXVFJdxzbDBwGr4kaKkbTYcUeIN0dbHDuoz
 x+49RaodJ9WvlUyCSTRvFKe7lQKlToCkknwxWKJl5seuW//ppuMJfKGprZ3FdStSX5dMU0A
 9jyc66JdrDYJbBpjyGtng==
X-UI-Out-Filterresults: notjunk:1;V03:K0:agZbiHQ3QcI=:7qYJ0h5aCaOWsSDNrfq5CH
 qaSr3TmIoq2uEzVm8Q7EqUphclJUPPAOLl4X9InIsqvKpB/MO6s6tK7c6/oFcxLuCEhrufKts
 rQhxrNL/DMp+rVq2OHDexV/7svguarZHyvz/aL/kvxF+EeaGeORpdobYZ8Umt+BnPBSFJCU2X
 ID5vVJpkDdEAGHNtZI4amT7klgTwhc26+FEvCBxUG62XtIIs1vXbYFr6Ux25buwq8qX363OKM
 ELr+FHf1xwaybM/zakqPZStMWMWl+dovCRCEIT65T9l977Su/eq6+wk1sBe1vbkYZYuGY4J11
 G6AVkYWewWpiMKaGj5IOlAKINVKBjMxBley9rYMhC/jwSEwJyX2U3ecpYzK9/Vp4ZzNDdCZRg
 En9kgVOksCPW2MU1+xscYSqz65A7PlaELeuk7iRYe4DWjJU6o/gPlzOT+zKi01rMmbFtzHA2y
 +nX2ALvZOplgWBWgqroORiZZkkc8KOi1vQO/2vht/UNAS/JyvINYVaCClu5kpvnF0DGLvlSKg
 2oyYb+p/IAvi7W/CF1DjQK8tTw0suXiX6hk55fxTr34BheDzFfVqMmmAciDThPBWmqKTUxJcp
 QBswMwwhZcID8mDzAUtl+4IAOF4GyD44+txsmQe2vmFVGxb+ayQ2bYho1A1pPranfCgarRjy6
 6z59byyo8t+fD40ar3uOqJX0+M9Ifqdi9QLtid2FrBBoj5omZbVM6QvAzcuVLNkq9E//x5H0q
 Be08aE3Oy/+iIgHrnah8QttnzCe8lPPW6uzS1x/36ZAe9KVnGZ6XBkvDEZihRf9P5bSq1EFuI
 7IWstP1FHkMkbUL5HAqq9Yi8KKU8GtFDYlUGR4OxKuDJolWZeA=
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

In some configurations, including this header leads to a warning:

drivers/staging/media/atomisp//pci/sh_css_firmware.h:41:38: error: declaration of 'struct device' will not be visible outside of this function [-Werror,-Wvisibility]

Make sure the struct tag is known before declaring a function
that uses it as an argument.

Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/sh_css_firmware.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
index f6253392a6c9..317559c7689f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
@@ -37,6 +37,7 @@ extern unsigned int sh_css_num_binaries;
 char
 *sh_css_get_fw_version(void);
 
+struct device;
 bool
 sh_css_check_firmware_version(struct device *dev, const char *fw_data);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
