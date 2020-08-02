Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F004E2354D2
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 03:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD1738788C;
	Sun,  2 Aug 2020 01:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I0e8t-yux2kI; Sun,  2 Aug 2020 01:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B960877E8;
	Sun,  2 Aug 2020 01:44:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3CD71BF3A3
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 01:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC8F8877F1
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 01:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2kbSuMRUtio for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 01:44:40 +0000 (UTC)
X-Greylist: delayed 07:56:43 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0232.hostedemail.com
 [216.40.44.232])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8CD1C877E8
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 01:44:40 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 3E3BE12EC;
 Sun,  2 Aug 2020 01:44:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:2:41:69:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1593:1594:1606:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3870:3872:4117:4321:4384:5007:6117:6119:7903:7904:10004:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12683:12740:12760:12895:13439:14659:21080:21324:21451:21611:21627:21990:30009:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: pail64_3c16b0526f91
X-Filterd-Recvd-Size: 6029
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Sun,  2 Aug 2020 01:44:38 +0000 (UTC)
Message-ID: <f8dd21b5000d4def1de9e79f32433f22da5b33d7.camel@perches.com>
Subject: Re: [PATCH] staging: rts5208: clear alignment style issues
From: Joe Perches <joe@perches.com>
To: Tomer Samara <tomersamara98@gmail.com>, gregkh@linuxfoundation.org
Date: Sat, 01 Aug 2020 18:44:37 -0700
In-Reply-To: <20200801210056.GA305272@tsnow>
References: <20200801210056.GA305272@tsnow>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-08-02 at 00:00 +0300, Tomer Samara wrote:
>   Clear checkpatch alignment style issues in rtsx_transport.c.
>   CHECK: Alignment should match open parenthesis
[]
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
[]
> @@ -678,7 +678,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
>  
>  	/* Wait for TRANS_OK_INT */
>  	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
> -			msecs_to_jiffies(timeout));
> +							     msecs_to_jiffies(timeout));
>  	if (timeleft <= 0) {
>  		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
>  			__func__, __LINE__);

Always try to improve the code rather than just
shut up checkpatch warnings.

Perhaps it's more sensible to centralize the uses of
wait_for_completion_interruptible_timeout.

Something like:
---
 drivers/staging/rts5208/rtsx_transport.c | 36 +++++++++++++-------------------
 1 file changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 5f1eefe80f1e..269ff1be7cba 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -222,12 +222,18 @@ void rtsx_send_cmd_no_wait(struct rtsx_chip *chip)
 	rtsx_writel(chip, RTSX_HCBCTLR, val);
 }
 
+static inline bool rtsx_wait(struct completion *comp, int timeout)
+{
+	unsigned long t = msecs_to_jiffies(timeout);
+
+	return wait_for_completion_interruptible_timeout(comp, t) > 0;
+}
+
 int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 {
 	struct rtsx_dev *rtsx = chip->rtsx;
 	struct completion trans_done;
 	u32 val = BIT(31);
-	long timeleft;
 	int err = 0;
 
 	if (card == SD_CARD)
@@ -257,9 +263,8 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
-	if (timeleft <= 0) {
+
+	if (!rtsx_wait(&trans_done, timeout)) {
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
 			chip->int_reg);
 		err = -ETIMEDOUT;
@@ -322,7 +327,6 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 	u8 dir;
 	int sg_cnt, i, resid;
 	int err = 0;
-	long timeleft;
 	struct scatterlist *sg_ptr;
 	u32 val = TRIG_DMA;
 
@@ -419,9 +423,7 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 
 	spin_unlock_irq(&rtsx->reg_lock);
 
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
-	if (timeleft <= 0) {
+	if (!rtsx_wait(&trans_done, timeout)) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
@@ -443,9 +445,7 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 	if (rtsx->trans_result == TRANS_NOT_READY) {
 		init_completion(&trans_done);
 		spin_unlock_irq(&rtsx->reg_lock);
-		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
-		if (timeleft <= 0) {
+		if (!rtsx_wait(&trans_done, timeout)) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
 			dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
@@ -486,7 +486,6 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 	u8 dir;
 	int buf_cnt, i;
 	int err = 0;
-	long timeleft;
 	struct scatterlist *sg_ptr;
 
 	if (!sg || (num_sg <= 0))
@@ -563,9 +562,7 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 
 		spin_unlock_irq(&rtsx->reg_lock);
 
-		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
-		if (timeleft <= 0) {
+		if (!rtsx_wait(&trans_done, timeout)) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
 			dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
@@ -590,9 +587,7 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 	if (rtsx->trans_result == TRANS_NOT_READY) {
 		init_completion(&trans_done);
 		spin_unlock_irq(&rtsx->reg_lock);
-		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
-		if (timeleft <= 0) {
+		if (!rtsx_wait(&trans_done, timeout)) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
 			dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
@@ -633,7 +628,6 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	u8 dir;
 	int err = 0;
 	u32 val = BIT(31);
-	long timeleft;
 
 	if (!buf || (len <= 0))
 		return -EIO;
@@ -677,9 +671,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
-			msecs_to_jiffies(timeout));
-	if (timeleft <= 0) {
+	if (!rtsx_wait(&trans_done, timeout)) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
