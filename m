Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F15A8274A15
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 22:23:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF35885E69;
	Tue, 22 Sep 2020 20:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4SGmXXx0_Oxh; Tue, 22 Sep 2020 20:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7E1185DFD;
	Tue, 22 Sep 2020 20:23:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4EAF1BF3DE
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 20:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF8AB87095
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 20:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POF87c5gL1Ux for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 20:23:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D10486FC9
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 20:23:01 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M7bJ5-1kOMVn1M7R-0081Wn; Tue, 22 Sep 2020 22:22:46 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vchiq: avoid mixing kernel and user pointers
Date: Tue, 22 Sep 2020 22:21:44 +0200
Message-Id: <20200922202208.1861595-2-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200922202208.1861595-1-arnd@arndb.de>
References: <20200922202208.1861595-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uyr5bq/uvLWeSRT/7EmVL54owZs1xvHwIcMH0CEh3FbQbl27NWP
 +9uJZN57QvEZLQKpZIZTRyv62kqeIQ8ireLngBpKR3jal6dPxOsKxccLed4Q93CxCmZzqer
 SX5L8gGKGxLrOgXtCWFrqqt/kbUbAQ5npUS5fqvxs6XMtrE+iJ0C2TjRx1GfelQjLBseYIV
 nFq1MAthmGrgm3jQcZ30g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:XpHgH0gLHSE=:bmQWnZmpCRoygu6Ct+qXFY
 ZC2yQV8/X7sEFnndSE2drkYrThpnRNQmGzj4hWzHtWqHsZGpSKIoQD5NVXWwkzHDGQVoqoJS+
 omO57X8gtQGfJ2n6wCQ3Zu2iljMcA0CrwjCy4rsM7+d1YEwchH//IjAqglHag+FrixeatY4DK
 tLbvuRpjBAsohx4p9tepkhxXMGUh4jECuajOI07S3MzwqhU3wclbqDaitE5373QEyi34aePdV
 5t+DYvZcoA3KSjXN9WZIrCSmL2jQvM47kywJaBTGJGleyNIz0FQhLEXyiMG0jOGsyFeCbTFhY
 NpBBEr7Fp6OOS4sltZ+uniTGBt+Se4kSML8DxL+44tLAyW/FpSyd+kuHebb6TYy5Wj+1TkX0M
 qQSPO3IXX4Hd0PgnUajcQ0pPaaPhaYvI/sPZv1BfTBE52uxX3ely/8bO2NyQ0srVFTNd/1UXE
 6xOx4CVX33GWd+GiUEcYmF/FoyuBcTg7rPBCYdViGckJVWjCPNygIQBIw5CkDRKLe239ju1st
 Q0CqVFpwQZgzpdUMkKQmV++FveIRqsfF0xe4zp/fN2ctaP8JTZ0P86KghRID4exvbRWeHbQRj
 5pn+CE7pSWYly51f5NKlWFWZ0w/PSh7zanED2WMsIcXHN0FNNDGzXiZ4yYT0f+JrjoBDUBwLD
 7A/PFZI78p6Gzpid22q4LqjmsGJoUz2oJBW0yabCi5KD75j5f4SsiB0XVyjXjH3KWrLjMOC2h
 OSds5KhJHzW6sJ3AIOE9yl8gaqNoRCxnfm1UDEWwS3/xofelZQKS3pMHohE7IUotKUH1Kdm/c
 HsU+igAJBCE6UzIa8y21EefTMLmgex2u2FuspD7O5nN5M33TNt3G4Pr0Gjw2lZ3ufIydlRg
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As found earlier, there is a problem in the create_pagelist() function
that takes a pointer argument that either points into vmalloc space or
into user space, with the pointer value controlled by user space allowing
a malicious user to trick the driver into accessing the kernel instead.

Avoid this problem by adding another function argument and passing
kernel pointers separately from user pointers. This makes it possible
to rely on sparse to point out invalid conversions, and it prevents
user space from faking a kernel pointer.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      | 22 +++++++++++--------
 .../interface/vchiq_arm/vchiq_arm.c           | 14 +++++++-----
 .../interface/vchiq_arm/vchiq_core.c          | 10 +++++----
 .../interface/vchiq_arm/vchiq_core.h          |  6 ++---
 4 files changed, 30 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 7dc7441db592..8782ebe0b39a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -70,7 +70,7 @@ static irqreturn_t
 vchiq_doorbell_irq(int irq, void *dev_id);
 
 static struct vchiq_pagelist_info *
-create_pagelist(char __user *buf, size_t count, unsigned short type);
+create_pagelist(char *buf, char __user *ubuf, size_t count, unsigned short type);
 
 static void
 free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
@@ -216,12 +216,12 @@ remote_event_signal(struct remote_event *event)
 }
 
 enum vchiq_status
-vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
-			int dir)
+vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset,
+			void __user *uoffset, int size, int dir)
 {
 	struct vchiq_pagelist_info *pagelistinfo;
 
-	pagelistinfo = create_pagelist((char __user *)offset, size,
+	pagelistinfo = create_pagelist(offset, uoffset, size,
 				       (dir == VCHIQ_BULK_RECEIVE)
 				       ? PAGELIST_READ
 				       : PAGELIST_WRITE);
@@ -304,7 +304,8 @@ cleanup_pagelistinfo(struct vchiq_pagelist_info *pagelistinfo)
  */
 
 static struct vchiq_pagelist_info *
-create_pagelist(char __user *buf, size_t count, unsigned short type)
+create_pagelist(char *buf, char __user *ubuf,
+		size_t count, unsigned short type)
 {
 	struct pagelist *pagelist;
 	struct vchiq_pagelist_info *pagelistinfo;
@@ -320,7 +321,10 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 	if (count >= INT_MAX - PAGE_SIZE)
 		return NULL;
 
-	offset = ((unsigned int)(unsigned long)buf & (PAGE_SIZE - 1));
+	if (buf)
+		offset = (uintptr_t)buf & (PAGE_SIZE - 1);
+	else
+		offset = (uintptr_t)ubuf & (PAGE_SIZE - 1);
 	num_pages = DIV_ROUND_UP(count + offset, PAGE_SIZE);
 
 	if (num_pages > (SIZE_MAX - sizeof(struct pagelist) -
@@ -368,14 +372,14 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 	pagelistinfo->scatterlist = scatterlist;
 	pagelistinfo->scatterlist_mapped = 0;
 
-	if (is_vmalloc_addr((void __force *)buf)) {
+	if (buf) {
 		unsigned long length = count;
 		unsigned int off = offset;
 
 		for (actual_pages = 0; actual_pages < num_pages;
 		     actual_pages++) {
 			struct page *pg =
-				vmalloc_to_page((void __force *)(buf +
+				vmalloc_to_page((buf +
 						 (actual_pages * PAGE_SIZE)));
 			size_t bytes = PAGE_SIZE - off;
 
@@ -393,7 +397,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 		/* do not try and release vmalloc pages */
 	} else {
 		actual_pages = pin_user_pages_fast(
-					  (unsigned long)buf & PAGE_MASK,
+					  (unsigned long)ubuf & PAGE_MASK,
 					  num_pages,
 					  type == PAGELIST_READ,
 					  pages);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4fb19e68eadf..590415561b73 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -360,8 +360,8 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 		case VCHIQ_BULK_MODE_NOCALLBACK:
 		case VCHIQ_BULK_MODE_CALLBACK:
 			status = vchiq_bulk_transfer(handle,
-						     (void *)data, size,
-						     userdata, mode,
+						     (void *)data, NULL,
+						     size, userdata, mode,
 						     VCHIQ_BULK_TRANSMIT);
 			break;
 		case VCHIQ_BULK_MODE_BLOCKING:
@@ -397,7 +397,8 @@ enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
 		switch (mode) {
 		case VCHIQ_BULK_MODE_NOCALLBACK:
 		case VCHIQ_BULK_MODE_CALLBACK:
-			status = vchiq_bulk_transfer(handle, data, size, userdata,
+			status = vchiq_bulk_transfer(handle, data, NULL,
+						     size, userdata,
 						     mode, VCHIQ_BULK_RECEIVE);
 			break;
 		case VCHIQ_BULK_MODE_BLOCKING:
@@ -477,7 +478,8 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 		}
 	}
 
-	status = vchiq_bulk_transfer(handle, data, size, &waiter->bulk_waiter,
+	status = vchiq_bulk_transfer(handle, data, NULL, size,
+				     &waiter->bulk_waiter,
 				     VCHIQ_BULK_MODE_BLOCKING, dir);
 	if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
 		!waiter->bulk_waiter.bulk) {
@@ -924,7 +926,7 @@ static int vchiq_ioc_dequeue_message(struct vchiq_instance *instance,
 		ret = -ENOTCONN;
 	} else if (header->size <= args->bufsize) {
 		/* Copy to user space if msgbuf is not NULL */
-		if (!args->buf || (copy_to_user((void __user *)args->buf,
+		if (!args->buf || (copy_to_user(args->buf,
 					header->data, header->size) == 0)) {
 			ret = header->size;
 			vchiq_release_message(service->handle, header);
@@ -997,7 +999,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 	 * accessing kernel data instead of user space, based on the
 	 * address.
 	 */
-	status = vchiq_bulk_transfer(args->handle, args->data, args->size,
+	status = vchiq_bulk_transfer(args->handle, NULL, args->data, args->size,
 				     userdata, args->mode, dir);
 
 	if (!waiter) {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 12110692e68d..38b10fd5d992 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3015,8 +3015,8 @@ vchiq_remove_service(unsigned int handle)
  * structure.
  */
 enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
-				   void *offset, int size,
-				   void *userdata,
+				   void *offset, void __user *uoffset,
+				   int size, void *userdata,
 				   enum vchiq_bulk_mode mode,
 				   enum vchiq_bulk_dir dir)
 {
@@ -3032,7 +3032,8 @@ enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 	int payload[2];
 
 	if (!service || service->srvstate != VCHIQ_SRVSTATE_OPEN ||
-	    !offset || vchiq_check_service(service) != VCHIQ_SUCCESS)
+	    (!offset && !uoffset) ||
+	    vchiq_check_service(service) != VCHIQ_SUCCESS)
 		goto error_exit;
 
 	switch (mode) {
@@ -3088,7 +3089,8 @@ enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 	bulk->size = size;
 	bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;
 
-	if (vchiq_prepare_bulk_data(bulk, offset, size, dir) != VCHIQ_SUCCESS)
+	if (vchiq_prepare_bulk_data(bulk, offset, uoffset, size, dir)
+			!= VCHIQ_SUCCESS)
 		goto unlock_error_exit;
 
 	wmb();
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 5ec717969676..06200a76b871 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -559,8 +559,8 @@ extern void
 remote_event_pollall(struct vchiq_state *state);
 
 extern enum vchiq_status
-vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
-		    void *userdata, enum vchiq_bulk_mode mode,
+vchiq_bulk_transfer(unsigned int handle, void *offset, void __user *uoffset,
+		    int size, void *userdata, enum vchiq_bulk_mode mode,
 		    enum vchiq_bulk_dir dir);
 
 extern int
@@ -633,7 +633,7 @@ vchiq_queue_message(unsigned int handle,
 
 extern enum vchiq_status
 vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset,
-			int size, int dir);
+			void __user *uoffset, int size, int dir);
 
 extern void
 vchiq_complete_bulk(struct vchiq_bulk *bulk);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
