Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC5E2D19D6
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63AD82E27F;
	Mon,  7 Dec 2020 19:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DXP+1eci5lQ0; Mon,  7 Dec 2020 19:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A37012E268;
	Mon,  7 Dec 2020 19:40:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 782161BF83B
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7473486EA3
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tMZxUIQCxd57 for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 358228706C
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:39:54 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 92F4624100E;
 Mon,  7 Dec 2020 20:30:37 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 8D30A3280304; Mon,  7 Dec 2020 20:30:36 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 11/12] media: atomisp: Write function decleration in one line
Date: Mon,  7 Dec 2020 20:26:38 +0100
Message-Id: <20201207192638.15219-12-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
References: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, ij72uhux@stud.informatik.uni-erlangen.de,
 Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
WARNING:LEADING_SPACE: please, no spaces at the start of a line
Avoid these errors by writing the function decleration in one line.

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 .../atomisp/pci/runtime/queue/src/queue.c     | 44 +++++--------------
 1 file changed, 11 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
index aea6c66a3cee..2f1c2df59f71 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue.c
@@ -22,9 +22,7 @@
 /*****************************************************************************
  * Queue Public APIs
  *****************************************************************************/
-int ia_css_queue_local_init(
-    ia_css_queue_t *qhandle,
-    ia_css_queue_local_t *desc)
+int ia_css_queue_local_init(ia_css_queue_t *qhandle, ia_css_queue_local_t *desc)
 {
 	if (NULL == qhandle || NULL == desc
 	    || NULL == desc->cb_elems || NULL == desc->cb_desc) {
@@ -43,9 +41,7 @@ int ia_css_queue_local_init(
 	return 0;
 }
 
-int ia_css_queue_remote_init(
-    ia_css_queue_t *qhandle,
-    ia_css_queue_remote_t *desc)
+int ia_css_queue_remote_init(ia_css_queue_t *qhandle, ia_css_queue_remote_t *desc)
 {
 	if (NULL == qhandle || NULL == desc) {
 		/* Invalid parameters, return error*/
@@ -69,8 +65,7 @@ int ia_css_queue_remote_init(
 	return 0;
 }
 
-int ia_css_queue_uninit(
-    ia_css_queue_t *qhandle)
+int ia_css_queue_uninit(ia_css_queue_t *qhandle)
 {
 	if (!qhandle)
 		return -EINVAL;
@@ -84,9 +79,7 @@ int ia_css_queue_uninit(
 	return 0;
 }
 
-int ia_css_queue_enqueue(
-    ia_css_queue_t *qhandle,
-    uint32_t item)
+int ia_css_queue_enqueue(ia_css_queue_t *qhandle, uint32_t item)
 {
 	int error = 0;
 
@@ -143,9 +136,7 @@ int ia_css_queue_enqueue(
 	return 0;
 }
 
-int ia_css_queue_dequeue(
-    ia_css_queue_t *qhandle,
-    uint32_t *item)
+int ia_css_queue_dequeue(ia_css_queue_t *qhandle, uint32_t *item)
 {
 	int error = 0;
 
@@ -200,9 +191,7 @@ int ia_css_queue_dequeue(
 	return 0;
 }
 
-int ia_css_queue_is_full(
-    ia_css_queue_t *qhandle,
-    bool *is_full)
+int ia_css_queue_is_full(ia_css_queue_t *qhandle, bool *is_full)
 {
 	int error = 0;
 
@@ -234,9 +223,7 @@ int ia_css_queue_is_full(
 	return -EINVAL;
 }
 
-int ia_css_queue_get_free_space(
-    ia_css_queue_t *qhandle,
-    uint32_t *size)
+int ia_css_queue_get_free_space(ia_css_queue_t *qhandle, uint32_t *size)
 {
 	int error = 0;
 
@@ -268,9 +255,7 @@ int ia_css_queue_get_free_space(
 	return -EINVAL;
 }
 
-int ia_css_queue_get_used_space(
-    ia_css_queue_t *qhandle,
-    uint32_t *size)
+int ia_css_queue_get_used_space(ia_css_queue_t *qhandle, uint32_t *size)
 {
 	int error = 0;
 
@@ -302,10 +287,7 @@ int ia_css_queue_get_used_space(
 	return -EINVAL;
 }
 
-int ia_css_queue_peek(
-    ia_css_queue_t *qhandle,
-    u32 offset,
-    uint32_t *element)
+int ia_css_queue_peek(ia_css_queue_t *qhandle, u32 offset, uint32_t *element)
 {
 	u32 num_elems = 0;
 	int error = 0;
@@ -354,9 +336,7 @@ int ia_css_queue_peek(
 	return -EINVAL;
 }
 
-int ia_css_queue_is_empty(
-    ia_css_queue_t *qhandle,
-    bool *is_empty)
+int ia_css_queue_is_empty(ia_css_queue_t *qhandle, bool *is_empty)
 {
 	int error = 0;
 
@@ -388,9 +368,7 @@ int ia_css_queue_is_empty(
 	return -EINVAL;
 }
 
-int ia_css_queue_get_size(
-    ia_css_queue_t *qhandle,
-    uint32_t *size)
+int ia_css_queue_get_size(ia_css_queue_t *qhandle, uint32_t *size)
 {
 	int error = 0;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
