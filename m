Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 491B2ABBCD
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 17:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4AEAE204B6;
	Fri,  6 Sep 2019 15:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80r9CFc2D-09; Fri,  6 Sep 2019 15:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 841A42049A;
	Fri,  6 Sep 2019 15:09:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CAFE1BF296
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0945A2048C
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 15:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vuJHdXaDoN6h for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 15:09:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D86F20477
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 15:09:35 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MhUDj-1iated0Y4J-00eZJS; Fri, 06 Sep 2019 17:09:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] exfat stopusing CONFIG_FAT_DEFAULT_IOCHARSET
Date: Fri,  6 Sep 2019 17:09:04 +0200
Message-Id: <20190906150917.1025250-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:uqse4hogKOr7BI9YbaZwXs0qyNe9NNWburGdPI+eJEYl2q8Qt1s
 uQVNJNkUVfq+l/FOkvdPd5DI9S065oyd28MutYIcNOCemFvmd3sk0OS91NieEqurLW0ou7f
 7ybSd+bMXeKQX5WVWhkVlHXTSMVz410x/mC3E8ME35vkFYSA8+DLyrt9KG6rKKChBeUtw66
 fXV42UtlfUIJdeW5Yh2ZA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4FoCFpjAsA8=:5xtEH+8/eJEDimTUKDvoYx
 kHftU+cpIZPlUEmKAgHcJcxq4+61ytMOFgBk1BUg/7s3p9h3KjyOBG4cplYu2dq9FduHsP5Wd
 etPBm5XzDrEnA9JY8SZ1xaAR7hD2IxFe1Stnq6vsIEpFiqPcJmicIKmVjvF325ZY0IyIrvzdr
 TQNfgsdGgIgXaEiHFvtwPZtWH3UpLrD8tp/lYpaBUP5GqFIYLsJyrVidm5t42K25yyfF8IG9N
 vYQwy/yGu1XDYBHnnWjnk0d0at38ouNKDmx9jDQgr+BAIFQWjAXnD4eY8jFP9btIELx8fHEhd
 OpU8yixFAEbdhpms2EPQ7/wQ7TOA+cCl/1Qk1nunsskh6meH2OeEiMT1aH7kGMaNecVP/pWP6
 RrQekXMfDXUmHSi8+iSBUKP2uHkETJkOFqN0fXjisKElLbxq11b2Vwa2NkwUE87H0gNe78Qty
 lIVGFWJqW4g4epFt31ZxReiSmtTxshaz/lCpNVfQwAf0yCpq+OnaaKbhvD5bjnwznMJDVDXMn
 SVfFK/LPNj3dCPIO0S4pstaF+rsEKQ3O0UpHyMSYBk1Virp5T+b9ScsK3AOiR6pk+mNr6JkD0
 sDJCXFSskfU8O5Ky1m3zMVsBWAwRG6qqzCz2KfYgXsFJwDjShdHbsOq6rm1kV86hKelnGerIZ
 /n6ejLqNNTazUL7mEzUWJqg+DzXA/dkphaju4bZlcBowvBQ1GvMzzHzhoM8T9dobYJMNPWCPj
 RHQFXGcTLWue1b0TAUZpOzbZJA3c/hKBWaJlbetfN/Rkt39ZPz+M0ybZzyysB2Y5cATh9aQEH
 3nyf+i1B3NKhmOpzHwTU1xruTx4QN0n6LzmF5qAQNPGNS+hyF0=
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When CONFIG_VFAT_FS is disabled, the reference to CONFIG_FAT_DEFAULT_IOCHARSET
causes a link failure:

drivers/staging/exfat/exfat_super.c:46:41: error: use of undeclared identifier 'CONFIG_FAT_DEFAULT_IOCHARSET'
static char exfat_default_iocharset[] = CONFIG_FAT_DEFAULT_IOCHARSET;

I could not figure out why the correct code is commented
out, but using that fixes the problem.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/exfat/exfat_super.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3934b120e1dd..37e78620723f 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -39,11 +39,8 @@
 
 static struct kmem_cache *exfat_inode_cachep;
 
-// FIXME use commented lines
-// static int exfat_default_codepage = CONFIG_EXFAT_DEFAULT_CODEPAGE;
-// static char exfat_default_iocharset[] = CONFIG_EXFAT_DEFAULT_IOCHARSET;
-static int exfat_default_codepage = CONFIG_FAT_DEFAULT_CODEPAGE;
-static char exfat_default_iocharset[] = CONFIG_FAT_DEFAULT_IOCHARSET;
+static int exfat_default_codepage = CONFIG_EXFAT_DEFAULT_CODEPAGE;
+static char exfat_default_iocharset[] = CONFIG_EXFAT_DEFAULT_IOCHARSET;
 
 #define INC_IVERSION(x) (inode_inc_iversion(x))
 #define GET_IVERSION(x) (inode_peek_iversion_raw(x))
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
