Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B03308B6
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 08:17:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC4C54EBC3;
	Mon,  8 Mar 2021 07:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iz4QxSAut2Q; Mon,  8 Mar 2021 07:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E43F4EB9F;
	Mon,  8 Mar 2021 07:17:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4A5A1BF2A3
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 07:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2A114EB9F
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 07:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ha6KKP44yg8J for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 07:17:18 +0000 (UTC)
X-Greylist: delayed 00:17:02 by SQLgrey-1.8.0
Received: from TWHMLLG4.macronix.com (twhmllg4.macronix.com [122.147.135.202])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 619334C849
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 07:17:18 +0000 (UTC)
Received: from TWHMLLG4.macronix.com (localhost [127.0.0.2] (may be forged))
 by TWHMLLG4.macronix.com with ESMTP id 12870JQ4006998
 for <devel@driverdev.osuosl.org>; Mon, 8 Mar 2021 15:00:19 +0800 (GMT-8)
 (envelope-from zhengxunli@mxic.com.tw)
Received: from twhfm1p2.macronix.com (twhfmlp2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id 1286xkGD005918;
 Mon, 8 Mar 2021 14:59:46 +0800 (GMT-8)
 (envelope-from zhengxunli@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id 801AD206CE2A7AD5EB65;
 Mon,  8 Mar 2021 14:59:47 +0800 (CST)
To: shubhrajyoti.datta@xilinx.com
Subject: Re: [PATCH v10 5/9] staging: clocking-wizard: Add support for dynamic
 reconfiguration
MIME-Version: 1.0
X-KeepSent: 146ABDBB:F4474CC3-48258692:000D1A0C;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP6 SHF907 April 26, 2018
Message-ID: <OF146ABDBB.F4474CC3-ON48258692.000D1A0C-48258692.00266ED2@mxic.com.tw>
From: zhengxunli@mxic.com.tw
Date: Mon, 8 Mar 2021 14:59:47 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2021/03/08 PM 02:59:47,
 Serialize complete at 2021/03/08 PM 02:59:47
X-MAIL: TWHMLLG4.macronix.com 1286xkGD005918
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 shubhrajyoti.datta@gmail.com, slwu@mxic.com.tw, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, juliensu@mxic.com.tw,
 robh+dt@kernel.org, git@xilinx.com, miquel.raynal@bootlin.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi Shubhrajyoti,

My name is Zhengxun and I am the engineer from Macronix. We are
using the platform PicoZed 7015/7030 SOM (System On Module),
which is based on Xilinx Zynq=AE-7000 All Programmable (AP) SoC to
verify our Flash dirver. Of course, we are also using your clock
wizard, our version seems to be v5.2, but something went wrong.

+static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long =

rate,
+ unsigned long parent_rate)
+{
+                int err;
+                u32 value;
+                unsigned long flags =3D 0;
+                struct clk_wzrd_divider *divider =3D =

to_clk_wzrd_divider(hw);
+                void __iomem *div_addr =3D divider->base + divider->offset;
+
+                if (divider->lock)
+                                spin_lock_irqsave(divider->lock, flags);
+                else
+                                __acquire(divider->lock);
+
+                value =3D DIV_ROUND_CLOSEST(parent_rate, rate);
+
+                /* Cap the value to max */
+                min_t(u32, value, WZRD_DR_MAX_INT_DIV_VALUE);
+
+                /* Set divisor and clear phase offset */
+                writel(value, div_addr);
+                writel(0x00, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);

Why phase always set to zero? We want to support DTR operation in
Flash driver. Can you add a set_phase function to adjust the phase?

+                /* Check status register */
+                err =3D readl_poll_timeout(divider->base + =

WZRD_DR_STATUS_REG_OFFSET,
+                                                                 value, =

value & WZRD_DR_LOCK_BIT_MASK,
+ WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+                if (err)
+                                goto err_reconfig;
+
+                /* Initiate reconfiguration */
+                writel(WZRD_DR_BEGIN_DYNA_RECONF,
+                       divider->base + WZRD_DR_INIT_REG_OFFSET);
+
+                /* Check status register */
+                err =3D readl_poll_timeout(divider->base + =

WZRD_DR_STATUS_REG_OFFSET,
+                                                                 value, =

value & WZRD_DR_LOCK_BIT_MASK,
+ WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);

According to pg015-clk-wiz.pdf, Clocking Wizard v5.2 and later, need to =

write
0x00000007 followed by 0x00000002 into Clock Configuration Register 23, to
consolidate the redundant bits that the IP has upgraded, right?

Can you compatible to v5.2?

+err_reconfig:
+                if (divider->lock)
+                                spin_unlock_irqrestore(divider->lock, =

flags);
+                else
+                                __release(divider->lock);
+                return err;
+}

Thanks,
Zhengxun


CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information =

and/or personal data, which is protected by applicable laws. Please be =

reminded that duplication, disclosure, distribution, or use of this e-mail =

(and/or its attachments) or any part thereof is prohibited. If you receive =

this e-mail in error, please notify us immediately and delete this mail as =

well as its attachment(s) from your system. In addition, please be =

informed that collection, processing, and/or use of personal data is =

prohibited unless expressly permitted by personal data protection laws. =

Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or=
 personal data, which is protected by applicable laws. Please be reminded t=
hat duplication, disclosure, distribution, or use of this e-mail (and/or it=
s attachments) or any part thereof is prohibited. If you receive this e-mai=
l in error, please notify us immediately and delete this mail as well as it=
s attachment(s) from your system. In addition, please be informed that coll=
ection, processing, and/or use of personal data is prohibited unless expres=
sly permitted by personal data protection laws. Thank you for your attentio=
n and cooperation.

Macronix International Co., Ltd.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
