Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA4C22F7D4
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 20:37:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 419FC85F5C;
	Mon, 27 Jul 2020 18:36:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDFeNQxdv7K1; Mon, 27 Jul 2020 18:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36E8D85C9F;
	Mon, 27 Jul 2020 18:36:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC1931BF381
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 18:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5D2F86091
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 18:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3BGnIaND-Zt for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 18:36:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BDFE860BF
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 18:36:55 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50EC620729;
 Mon, 27 Jul 2020 18:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595875015;
 bh=0qi4Bh72MnTOjHIKJDOCzq3CI7AB00MKUbRkPWQ0UjI=;
 h=Date:From:To:Cc:Subject:From;
 b=GsrL9hzNE5X0b/+DyDLS7oSOIT3Zm7Keq2SQhp9bvOWyvE9T3MmO4BbtviLMS+CiF
 wJSWusFKgJ6BespsQQxGR/kPpgdK33PYWneRnE/J/apIxa4Up4S7/7YXugMWRm0tbx
 q+XYkM/T1h41grdaSYpG7wiM/BJR7Fne3UABoDh8=
Date: Mon, 27 Jul 2020 13:42:47 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH][next] staging: comedi: s526: Use fallthrough pseudo-keyword
Message-ID: <20200727184247.GA29207@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1].

[1] https://www.kernel.org/doc/html/v5.7/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/comedi/drivers/s526.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/s526.c b/drivers/staging/comedi/drivers/s526.c
index ba485f106c1e..085cf5b449e5 100644
--- a/drivers/staging/comedi/drivers/s526.c
+++ b/drivers/staging/comedi/drivers/s526.c
@@ -400,7 +400,7 @@ static int s526_gpct_winsn(struct comedi_device *dev,
 		if ((data[1] <= data[0]) || !data[0])
 			return -EINVAL;
 		/* to write the PULSE_WIDTH */
-		/* fall through */
+		fallthrough;
 	case INSN_CONFIG_GPCT_QUADRATURE_ENCODER:
 	case INSN_CONFIG_GPCT_SINGLE_PULSE_GENERATOR:
 		s526_gpct_write(dev, chan, data[0]);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
