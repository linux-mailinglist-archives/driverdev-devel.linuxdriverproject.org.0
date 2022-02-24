Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B99C4C3847
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Feb 2022 22:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D55A4025D;
	Thu, 24 Feb 2022 21:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f267dRaFP_Q5; Thu, 24 Feb 2022 21:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B636040017;
	Thu, 24 Feb 2022 21:59:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5B61BF28C
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A3C44025D
 for <devel@linuxdriverproject.org>; Thu, 24 Feb 2022 21:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xF5fQxpS_8S1 for <devel@linuxdriverproject.org>;
 Thu, 24 Feb 2022 21:59:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5CC140017
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 21:59:28 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id j2so2297438ybu.0
 for <devel@driverdev.osuosl.org>; Thu, 24 Feb 2022 13:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=GU0EztNx9jrkODdV3oxVFs+z7sfIeReU2gumNMRWTUbM8BJhm/lT9kUOkKRCs3E0D3
 mpwASLDpbqZS3MbS79iup1babXfhy1ES71jY9oueXjxiwZoUNZnT0rgL3LevRUbH+siP
 6vFl8zfhfUnFMFezLLox63ENP5ADs5JFGpdZpLGLKotmc7PNGoopOQhz2Ayd9R1TQC3D
 bJGi+ygSGl8cwsEZxaK53OCk2DkdiR/hAav44w4xizZ3lnTd2lJ2F6A2pcJT16uh1lRG
 +cc3hlepLdCBVN028OVc4TTxv/EpKlNSbmgJLuO3MaD6urOuy1umWVkAAbEgMeLjnmWZ
 FRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wv9+lUDiUamCN2D56q0OJAqCtadhguvOfwApXNhEE00=;
 b=FDi5NsAmfrSY3ezLt/w2YjH/l43PhfpOYkjW65aEULgVQdp4hCE+SbykLSEyPjetfE
 2lA5SWMqAsnwmYq1VOYav0gesUPREFuS8zOpGHxAMaIxJTl8JUHUvco16N5rQtYsHY+I
 I2v0DQt96ZG3G0JAWWClBLsQUUBhPJCwsbWtaSz8aY0pmrSyVbpEovIiymNid75QwEju
 fu8YgmDqhEzSlWUzYT30RsSJyByCGOjzIeIPx22ECHQr/HETUxL17gaFYstpv7b3Yyr7
 cpG4mXHt/5otarVmUz/yE8mBCqGfls5Ryxgee3auD51ZMnmA1Eb1EVU2x51X3SyRbOo0
 85ng==
X-Gm-Message-State: AOAM5329y5BB/ALpV07tZo60qmICckpkd/aUw8lH3GN02fsnYh2JOcvc
 M7ABIxnndb6TBKDi70sywDzld9V2oEw5Xpq/KaE=
X-Google-Smtp-Source: ABdhPJwUYhMoAKoHeOjlBav+a/pxqaCr0dck+9PlXOzcj3eCSNXNP2RuNC2R/K6eFtJpRRLpb52x8wEOGDwkyoMR2ks=
X-Received: by 2002:a25:207:0:b0:61d:c0eb:ecc6 with SMTP id
 7-20020a250207000000b0061dc0ebecc6mr4399397ybc.648.1645739967195; Thu, 24 Feb
 2022 13:59:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:7616:0:0:0:0 with HTTP; Thu, 24 Feb 2022 13:59:26
 -0800 (PST)
From: MR DAVID MORRIS <mrjohnwegener35@gmail.com>
Date: Thu, 24 Feb 2022 13:59:26 -0800
Message-ID: <CA+Kwxe_8ZNc=BWCqWj9qkBfKLxQge4iyoPSVf3000T8pgcsGLA@mail.gmail.com>
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
