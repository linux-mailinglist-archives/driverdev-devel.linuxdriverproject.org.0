Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C620364E724
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Dec 2022 06:58:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 212F640476;
	Fri, 16 Dec 2022 05:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 212F640476
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id takgP_KNmj2T; Fri, 16 Dec 2022 05:58:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D89E340327;
	Fri, 16 Dec 2022 05:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D89E340327
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 521861BF34B
 for <devel@linuxdriverproject.org>; Fri, 16 Dec 2022 05:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29D1240327
 for <devel@linuxdriverproject.org>; Fri, 16 Dec 2022 05:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29D1240327
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bu1hRBcIfBcc for <devel@linuxdriverproject.org>;
 Fri, 16 Dec 2022 05:58:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86D7340476
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86D7340476
 for <devel@driverdev.osuosl.org>; Fri, 16 Dec 2022 05:58:07 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-3e45d25de97so20250197b3.6
 for <devel@driverdev.osuosl.org>; Thu, 15 Dec 2022 21:58:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eXC95EdRC8mdMmS4r+AbXIHHUhfLATzexj03jxl9JTU=;
 b=tamawUOZXwbqVCBss/+uaX7+92Ugxjrl1SWkweHkPjKvpEZ0PndC66P+GezWKqfMQz
 gxcddBNZgT2EjldS2z8JS0i5/Nhz0+ecXPF+vFI/BFdD/sj8Ho76EKwifXaZE+zIvNV8
 QxTzo+l0eo1IgcITLzPMf0lgGY5HIdmuBH5j8hFvKc4rVu8AOlgcySedIu15DP556fgT
 1FA/cYLetXOlx85rhq4HZelXPTJmxvMhWNHbUmde5xT38CYYrGmfx2XtVbjCwwx/T4wp
 igV5LAJAV2c0qUqzMttx7ZDbHrrM9BE+eu7g6+39oz5BDL/o2W6UevK65pW8WwLyVsKR
 7ExQ==
X-Gm-Message-State: AFqh2krB4E0UUX2act7Mp3cmSvntATKRDSbz/qEjQFXGAsSRulhAowix
 3hZGjL1e9nmSKS34+eZWjmH5JGiAjWzoCzVrv8Y=
X-Google-Smtp-Source: AMrXdXs70D+4KZ1jUDFnHKRaWGyHey7Dc9inswblNBSxfRRTWd316YI/chvCWnxKggzIopslENqFD+qYgxcgnJsPW7U=
X-Received: by 2002:a05:690c:c85:b0:3da:bc09:40c1 with SMTP id
 cm5-20020a05690c0c8500b003dabc0940c1mr103654ywb.460.1671170285911; Thu, 15
 Dec 2022 21:58:05 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:8e9d:b0:319:d573:607f with HTTP; Thu, 15 Dec 2022
 21:58:05 -0800 (PST)
From: ATM DEPARTMENT <worldwidedeliveryagent364@gmail.com>
Date: Fri, 16 Dec 2022 06:58:05 +0100
Message-ID: <CAGgmfOOC9HRrmGgNN1jTQZ30MY2JpAF1-BoQAnoa1_m-DtKe4Q@mail.gmail.com>
Subject: Attention for you outstanding payment
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eXC95EdRC8mdMmS4r+AbXIHHUhfLATzexj03jxl9JTU=;
 b=OsMMKck8FO/LGQjXR7DEIkiXiCoEgJDVDaSAEwljzc4jPILMZ/lZX3qyFllzGDUOCi
 3CJL9YYYHYucZuEok7RvuV7Z3dMjkY4wauNVOAhxFRxnzd4EJAzbDcOMdfqKl6ezl+r8
 wdj/PIEd3R8holKuIi/I9QpRs0hZmz3V1XX5pFORaYbNhasuBCAyoDNB+uAogH+WulDv
 cyc40gOcO71tGnai6TLmKBGWbTOUwaaaFziWjMn2opG6Jby31ZpYvFwTss7Bi2OR0dt8
 grPiQpLLMbLvfas26uzdYOH4hY08YI/v6MgokazSPQHT10l+k6yLSWxCZXC856q4JUvj
 ZgRg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OsMMKck8
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
Reply-To: officefile_0112@yahoo.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
 Now Your ATM Visa/Master Card is well packaged with every legal
document to convey it not have any problem with anybody, therefore, we
are hereby inviting you to our office here in Benin, Office Address,
Commented Bank, Cotonou Jean-Paul 1BP 325, Benin Republic, to enable
us to complete the normal formalities and activation process of your
ATM Visa Card and issue the Secret PIN CODE/NUMBER to enable you to
start using it at any ATM MACHINE worldwide of your choice nearest to
you, as soon as it is activated, But if you are unable to come down
here in our office in person you will be required to update our ATM
Department Center with your contact delivery details as stated below
so that they will proceed with the necessary arrangement for the
delivery your ATM VISA/MASTER CARD.

You're Full Name==========
Cell Phone Number=======
WhatsApp Number=========
Your Company names======
Current Home Address====
OCCUPATION==============
Fax Number==============
Country=================
City====================
Nearest Airport ========
Next Of Kin Name========
Next Email Address======
NEXT CELL PHONE=========
ANNUAL INCOME===========

contact Tony Elumelu, Chairman Email:
tonyelumeluchairman@accountant.com or tonyelumeluchairman@gmail.com,

you shall receive your ATM Card package as soon as possible.
Best regards
Mrs. Chantal Sevo.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
