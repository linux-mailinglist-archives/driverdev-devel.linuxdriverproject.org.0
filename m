Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 705D06AAF55
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 13:08:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C282281230;
	Sun,  5 Mar 2023 12:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C282281230
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xhk6NPpHizcf; Sun,  5 Mar 2023 12:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A77C481221;
	Sun,  5 Mar 2023 12:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A77C481221
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB1471BF35C
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 12:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FDEF403BF
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 12:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FDEF403BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MC6DP8l3ngJc for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7408C403B3
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7408C403B3
 for <devel@driverdev.osuosl.org>; Sun,  5 Mar 2023 12:08:06 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id j11so8188985edq.4
 for <devel@driverdev.osuosl.org>; Sun, 05 Mar 2023 04:08:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X/CzDNddB0kx26rf/LDhmne0+vrvAsGm9OJmrB2pG+o=;
 b=SlebQEB5izv7XnfjCSP2qF6CnFVgOIVDoaLdToOf9YFM8LXKZLVw9y+gzl+6XF5k09
 /v1/sLDSjJ9dNRek7czo36dnFUXDavMElTuA2r26IlpdEAAhF3ZfHtTwMvr6XydX3AID
 UcV6O1rh2qxHhqr0aeTGDbwKFnRza88z1V1p1uHE8No6rHyQZfHpHTLt4c0DFSYR8y6A
 qWTcW5tSVHn2Uu/UwTywDicCRYzGPz8y/HGXNzOT9f8DIHlYSRueUBgSS8TSatKFBcs3
 S5pvzdxvMn0eSTO/Fmyr1KaCqSBhDFYOfySSHAtRwlXF256UMfWJxixZ5REbEJ2ETJEW
 W6Jw==
X-Gm-Message-State: AO0yUKVcerucwSLWtOWbrGX6QX2EJEtDO9kDzXgKzqD0YqG/whKX4Le4
 1BgU8YAe/ooy3bJde+BsG5SFR/Wb+5Xrxozc85U=
X-Google-Smtp-Source: AK7set/HXKLQBXuDN5vWofKpeWDrtywIiT+0kfxDvXXyiCRl40SaK30H5Cj7mSkBApW8fAOIXdq/1E/7fDqmniZNxyU=
X-Received: by 2002:a17:906:4901:b0:8eb:27de:447c with SMTP id
 b1-20020a170906490100b008eb27de447cmr3545220ejq.13.1678018084333; Sun, 05 Mar
 2023 04:08:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:628c:0:0:0:0 with HTTP; Sun, 5 Mar 2023 04:08:03
 -0800 (PST)
From: FUND MANAGEMENT AND PAYMENT BUREAU <kamuliolive22@gmail.com>
Date: Sun, 5 Mar 2023 04:08:03 -0800
Message-ID: <CAMojCfHETRkwA25iJDHMyyLsSwPeUftqiYwcMfAJz9xLKNx1YA@mail.gmail.com>
Subject: HOW ARE YOU DOING TODAY
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X/CzDNddB0kx26rf/LDhmne0+vrvAsGm9OJmrB2pG+o=;
 b=MRhu1R+q+v8Vp6dSPPSc5mSAEfYTqMGLRUZU8Mpdfu9A5GYrMo2kYruHB6DgMOmKkY
 +NVqRxGilcw/VF79ohZgpusNNO83Kz9qynqt60/t3zZesWjXuLl90dJEyMduK80LXm0m
 PcDZNpqRTr/u8oaIkfDJIZoelQ1PdEIVFuZnX4kiKwrwyfT/HCb5WUi5PQuUa5U8mOKy
 P3cHzRfTo//VUW78gM4APAI+qoqgYKV4GolrUcuhlv9F/2f63uEFfhd199tgYDCJgKcD
 LrPqop4wxiGxAYzXOeSAREYzGm7Qu39TtJFfUof8/RVXpfNX+iudzY8vVZQ0mZ8b6m/2
 DkzQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MRhu1R+q
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
Reply-To: yz277277@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Customer

The office of FUND MANAGEMENT AND PAYMENT BUREAU on scam victims have
approved your full compensation payment of $3.700,000.00 USD through
ATM card for security reason due to the amount in value and the ATM
card is ready for delivery, I am sorry for the inconveniences.

Kindly reconfirm your information as stated below to enable me
complete the delivery arrangement of the ATM Card to your address.

Your Full Name*:..........
Address*:..................
Country*:.............
Phone Number*:................

Yours In Service
Mr Yulson Zackman
Director of Payments.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
