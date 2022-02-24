Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 999CC4C38B5
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 23:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF25183E94;
	Thu, 24 Feb 2022 22:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odXHrloAeNxp; Thu, 24 Feb 2022 22:25:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB2C83E5E;
	Thu, 24 Feb 2022 22:25:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 899AD1BF2FD
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 22:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 770F34179E
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 22:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l0CJDMvP54Dw for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 22:25:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB1CE41751
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 22:25:50 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id y189so2332833ybe.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 14:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=VlmKzCgvayWAOFQR+SbUHq9RIKA3UnqVDrhwyykBbwHzSHN9vEIAbPwHCU32tmFPAq
 /RdTuuNeND/WUHCi4I+oDvPbRYnEOSIuKDOVIIpd1gBQSTUiSqb0SrnNwHLs3cxfg0lm
 0tmiyIBy3P+N95VrYdlYT5F+wkJwZMGo1VWV9rtEnPtJVlM9i4y5L+aWtDxyE5uk1cd0
 mrb/gpYqe0uzA1A940yi15NU+BbS1KW2Jii8oNv7+lzjcaZBho1M8L868VKz8vayvEW0
 TEN4XfDOo3pbrfOaU2ZZVnopnFU9FangH7/n7p2uki/MFtIPOvlYRKFmS6Rs6N4mNyyX
 J77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=ToDX24JykhSD/hyVhJJp7xE/Jpg26KDosVeh62Q+wthBANBe7qSSsk8UbD8CAoYVMV
 +19joTRe+hjYd01Zn5gAnvjAmQXP7vI60y6wPx04QQe5rwvV3bJiDQ5LcIOQuW13m4nN
 HPpS6Ht/hr2BLJYVGkTVmosiEj/jZqIW5Zc6y42udy/aGI1oFt2WGKZ9Ff2yAjhMw0II
 JFu08xirdA4F6SB/vWxO9G7L1H2Jrm9/nBvqC7S2CksE6ajAx31YgNPLBw8Go3JiVQP3
 Q1AesC8cMLkl4+flKtnrE74SFZkel9QEi6FNuqs2HyzYGUbb9IiD6Hpz1sX4yr5Lvv2B
 6LZQ==
X-Gm-Message-State: AOAM532vxkdPIPeyD7bd6p81N9bc9cnS5IxBFCU8faySeXE2AZYpg+HF
 T1QeqOd87vuSnym+ncfK1BDRLC1+SpLGG5HzgqY=
X-Google-Smtp-Source: ABdhPJyJd5E7fX6TK1FY/kTC8icDB0KDzxJxyRBt+uyOQl7KNxqEU+xe5Q4cmdq5nCBBR6JSvPGrgcXryeMMjB9DvmQ=
X-Received: by 2002:a25:d2c1:0:b0:61d:add9:f029 with SMTP id
 j184-20020a25d2c1000000b0061dadd9f029mr4514439ybg.312.1645741549780; Thu, 24
 Feb 2022 14:25:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 14:25:49
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 14:25:49 -0800
Message-ID: <CA+Kwxe-KBQ7_OonNrGku_1OdGDqB1QmfR1b+s_ZBBFXahuh_2g@mail.gmail.com>
Subject: Dear Beneficiary
To: undisclosed-recipients:;
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
Reply-To: mrdavidmorris1718@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am MR DAVID MORRIS, Inspection Unit Manager United Nations,
Inspection Agency in Hartsfield Jackson International Airport Atlanta,
Georgia.During our investigation, I discovered An abandoned shipment through a
Diplomat from United Kingdom which was transferred from JF Kennedy
Airport to our facility here in Atlanta,

The ATM debit card is worth $8million,And I  Ascertain you
that the consignment is in your name,you are advised to provide all
detail for claim.

Sincerely,

MR MORRIS

CONTACT.......... mrdavidmorris1718@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
