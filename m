Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 234D158A6E
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4E682268C;
	Thu, 27 Jun 2019 18:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id si619gSXy1YB; Thu, 27 Jun 2019 18:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0736922622;
	Thu, 27 Jun 2019 18:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 483C41BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4566788045
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ck3Lb7GIllz for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3489187F78
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661809;
 bh=jFtiONca1hdVFxm/usbMzIOKsZXNfYtIs0InExv49OQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=D2n/GfnRCEz2ywceZA/kKouLEZ8IkCehCjlO5aCmz5+tC8z030yAjvdqyB0woCQeN
 H09IhGDFTlzXp9AbFu9SJX3i2YwAk1/NGSQ1+j+NCrJwtEvKmh9tgOeu+CTO3Renvy
 fzrN02XCH8IWytAfITKVaxSZm8rhnIDEreVKRfko=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M92lh-1hqF922WeD-00CQcQ; Thu, 27 Jun 2019 20:56:49 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 03/31] staging: bcm2835-camera: Replace spinlock protecting
 context_map with mutex
Date: Thu, 27 Jun 2019 20:56:00 +0200
Message-Id: <1561661788-22744-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:D2AkJfxcnXtCj6sokPxOpiTqs4No+MBrwT2O1aUmi8Tnu7VKWpY
 ZFyRQTMI7ZkQVPnbVGSo2fbjdP/sTozwpiHjpLkN4cGBYUtit3jU8k6ejuGXndm024u31kq
 CEMvzZJtgy68BFC4kNFKSOKqeMU56wyUQr1OTrnVo/ptijmkU1vNNLav5iuMGT5yAsO/KKl
 mOW8FQsL6mvuvLq2Hd5Wg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YoEFoI43RE0=:uqiLpOzWe7CCbDvKSmvf4u
 hv6fV2QWvbr6aOXQD1uX8MtNNg4lU2dk3lQFsfOA7Meu1Pn79kuJnEe08ilfhnMeQpwzmkbMD
 TTdRUaCm0ntceexWCPrXahYEgeAzp7TeH2eEL9LHNHdh/Tm1fUupwq2Tzv4tZrBGX1bhRn0Kw
 V2XOP0rE07+F8dS5YLd5nREB+Z4KqIG5Wny37p62GEK0lfyN/mIBLoq7R6m5IPJ3gPG26ienD
 hJg9N9oyV4VhrKmTDEb4dCdfhQnIKCD9MWAAzA4jeSvN95bZ+aTRnTNpnRxWSkS4ZfvGUZet5
 BernveDdnDGOR3W9W/nN+aH0zZnBITGvFNV0Ctnc0m0GJ3wciwIfZfYKNoV7TRuJKtH9G0dwm
 Gf1Rsc96auPYWwGGw0qnBeY+nj5yZeSVNJoqfYutoSoYvFtIcwlfDtn6r0+KUH4NHfzYKFXDF
 +QzjdCKEADgsVpF+w2J/m7pYLj+6NTCE536Qwf2ATTHxjeN2DK8PP0P0xdrtXW6J8ob6UQpzJ
 aYVIXFUiw/KTdc94/LDrbwix9ehCsdtWfglwLjVEoZRjWe2M7/V9cXSKCAkCjRqqxABbKS//s
 cFmgH7rLOo45JZQiDU3Ph0c9ZAOdt4tk5rrc4HMK4IA1/Y5OGb272uohTkfZc8+OsuzPsCwdU
 JTZ+tJW9TKlMxcKqgoBPj2znffLz9ZkBReeFgxacfR8yEY48M6x7mLaybZZbMUyalldj56jGu
 ugn05DtisHQ3NQtsAe7ExK5Ql4d1snFZKfXg2dipIzUv+ePlv/tsDSd/f4fYHjIr1BFf+ACA5
 uUaQHjSfmPBEEXEdt9xoayihczLwsbDSFkPNtooeSWW68mcTdloMXaexBfMYY5RtzssS4KsHI
 j/hVtzOa97dzujhsSCXqJ3xV+tETDYzIkC3tmmJkMSinxsJOEb8JDuGPRrM9MwZvSRMpHCIO9
 Ne0uTNT5KJ/ilJVdNLXLCsqc1DIv1AG/ytGM6zhRVNGmvHB+0EnCoSyHIeMolWrbMaBcvn60x
 pTdHScginuRG8EVT4wxqihbRRwPjOuAW1o7qExTSK98mJCmGFSJY8gmavl+8/K44NSBb6TYpj
 BMG0VCs1qIKoKo=
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

The commit "staging: bcm2835-camera: Replace open-coded idr with a struct idr."
replaced an internal implementation of an idr with the standard functions
and a spinlock. idr_alloc(GFP_KERNEL) can sleep whilst calling kmem_cache_alloc
to allocate the new node, but this is not valid whilst in an atomic context
due to the spinlock.

There is no need for this to be a spinlock as a standard mutex is
sufficient.

Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 16af735..f1bb900 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -161,7 +161,8 @@ struct vchiq_mmal_instance {
 	void *bulk_scratch;

 	struct idr context_map;
-	spinlock_t context_map_lock;
+	/* protect accesses to context_map */
+	struct mutex context_map_lock;

 	/* component to use next */
 	int component_idx;
@@ -184,10 +185,10 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	 * that when we service the VCHI reply, we can look up what
 	 * message is being replied to.
 	 */
-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	handle = idr_alloc(&instance->context_map, msg_context,
 			   0, 0, GFP_KERNEL);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);

 	if (handle < 0) {
 		kfree(msg_context);
@@ -211,9 +212,9 @@ release_msg_context(struct mmal_msg_context *msg_context)
 {
 	struct vchiq_mmal_instance *instance = msg_context->instance;

-	spin_lock(&instance->context_map_lock);
+	mutex_lock(&instance->context_map_lock);
 	idr_remove(&instance->context_map, msg_context->handle);
-	spin_unlock(&instance->context_map_lock);
+	mutex_unlock(&instance->context_map_lock);
 	kfree(msg_context);
 }

@@ -1849,7 +1850,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)

 	instance->bulk_scratch = vmalloc(PAGE_SIZE);

-	spin_lock_init(&instance->context_map_lock);
+	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);

 	params.callback_param = instance;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
