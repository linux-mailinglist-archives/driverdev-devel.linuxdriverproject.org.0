Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA4D59BBF
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 14:40:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9EC0787F8E;
	Fri, 28 Jun 2019 12:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n66jCMntz7KO; Fri, 28 Jun 2019 12:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C7B78750A;
	Fri, 28 Jun 2019 12:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14A381BF385
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11883203E6
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cy2ZNP6+w6g2 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 12:40:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BE561FE41
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:40:09 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MDyoU-1hoZvO22oG-009wgv; Fri, 28 Jun 2019 14:38:46 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kees Cook <keescook@chromium.org>, James Smart <james.smart@broadcom.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [PATCH 2/4] lpfc: reduce stack size with
 CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
Date: Fri, 28 Jun 2019 14:37:47 +0200
Message-Id: <20190628123819.2785504-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190628123819.2785504-1-arnd@arndb.de>
References: <20190628123819.2785504-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Qw9p6hkVU7HnncabkXeSvgIHyGWrL89skKuFPCZp3XZbO0Z/qwl
 1txNbL56ftqBS+LSOFslqsBvdmgKMoeVtc5vuNivf1x/Hgk6rdCltSSlwKzmDFARiFbxpMX
 roYZhrbFZPwCnH+YIDcrmlNv2/P2KB3uedb28TyWkruxxYcA0Q1WSTYI4p6fuQr+G8WWl4m
 wiD8C2ren7CMMLl/vSCeQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9p1MTuBuyDk=:YXzyCRUwn7APpAve3hKlPe
 nHF/oYpPvH043PpJDzBpYbX2thxZmSSswnsnQpSbKxZE0R21NYvE9cirR5tNGpYsMPnG7Bmqf
 NEJC8eMuHqYBXCdLHZaYKx4R+OcBtChRxmBPINgjkDR1Ukgntc1i1KRu2vK7It9BjLl9hTxE3
 VW3wpunjSw68XQygDWLce0WU5vqFUynqGlJoQU/ZWFmrLgfkcQ/VkReLIPd6ftdq/F/2GXDwH
 QJyQKqHBt8OV+QmK9Hf9nWZNKA5/hqg/HXgaaFuYtm8xOiyxOPzYrdc84CmTQv5orBgkpMDq2
 Rr7+PRFtp4CpCfi5obaWPlYtNxM5HKOPiPsv73te1dzJ1rUXKahVqHWVvvfD83y/c7+u4VDS9
 5c091tcVi4cTXpP5grNjAI5gI32I9XsT4rs5/NwyIocG855f58pbttER2oGEG08eNP0+/kEeE
 0YYB4yBmdBwCD+9fUMV4BPOLb9EbfqVgXVcacGY0GxgkcJqyFzAq2xpZQAyWVKfKiSxhTGnO5
 uUCIJ/XQ8CjIxPLLJRwY0lDEIhwFNwyTm3CRoC+iCykFcwHxHcltBSItZud14OzT4E0YYUPFl
 25wylPZDPavUJfd3p6KLltj+UyklBcFquHz5rDz/UyaDjrdeHEdDZwPH7lLD8P7AYmtrKBhA5
 2qiLUdYwCVy54dXnj8DB1vY+tMlW7Sx1UVpyEFBTCFalY0iDP2tJOw6N7eRtmRNjFEuG8rK3E
 yZDWdccDiFt4fe8agM+/UPXd9XeUaSmH7WyzIg==
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Hannes Reinecke <hare@suse.com>, coreteam@netfilter.org,
 linux-scsi@vger.kernel.org, Wensong Zhang <wensong@linux-vs.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Silvio Cesare <silvio.cesare@gmail.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, James Morris <jmorris@namei.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 Simon Horman <horms@verge.net.au>, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, Willy Tarreau <w@1wt.eu>,
 "David S . Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The lpfc_debug_dump_all_queues() function repeatedly calls into
lpfc_debug_dump_qe(), which has a temporary 128 byte buffer.
This was fine before the introduction of CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
because each instance could occupy the same stack slot. However,
now they each get their own copy, which leads to a huge increase
in stack usage as seen from the compiler warning:

drivers/scsi/lpfc/lpfc_debugfs.c: In function 'lpfc_debug_dump_all_queues':
drivers/scsi/lpfc/lpfc_debugfs.c:6474:1: error: the frame size of 1712 bytes is larger than 100 bytes [-Werror=frame-larger-than=]

Avoid this by not marking lpfc_debug_dump_qe() as inline so the
compiler can choose to emit a static version of this function
when it's needed or otherwise silently drop it. As an added benefit,
not inlining multiple copies of this function means we save several
kilobytes of .text section, reducing the file size from 47kb to 43.

It is somewhat unusual to have a function that is static but not
inline in a header file, but this does not cause problems here
because it is only used by other inline functions. It would
however seem reasonable to move all the lpfc_debug_dump_* functions
into lpfc_debugfs.c and not mark them inline as a later cleanup.

Fixes: 81a56f6dcd20 ("gcc-plugins: structleak: Generalize to all variable types")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/scsi/lpfc/lpfc_debugfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/lpfc/lpfc_debugfs.h b/drivers/scsi/lpfc/lpfc_debugfs.h
index 2322ddb085c0..34070874616d 100644
--- a/drivers/scsi/lpfc/lpfc_debugfs.h
+++ b/drivers/scsi/lpfc/lpfc_debugfs.h
@@ -330,7 +330,7 @@ enum {
  * This function dumps an entry indexed by @idx from a queue specified by the
  * queue descriptor @q.
  **/
-static inline void
+static void
 lpfc_debug_dump_qe(struct lpfc_queue *q, uint32_t idx)
 {
 	char line_buf[LPFC_LBUF_SZ];
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
