Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548545FAE8F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Oct 2022 10:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0804F40B7B;
	Tue, 11 Oct 2022 08:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0804F40B7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwkZTBnDVC3n; Tue, 11 Oct 2022 08:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3808C40B5A;
	Tue, 11 Oct 2022 08:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3808C40B5A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEDDD1BF302
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 08:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6BB682FCB
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 08:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6BB682FCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3dpQ09OG9uz5 for <devel@linuxdriverproject.org>;
 Tue, 11 Oct 2022 08:38:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBDF182FB1
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBDF182FB1
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 08:38:43 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id q83so6305432vkb.2
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 01:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AgTXuEw/pEaG30kf0ItQqTQmOBjyx1M6FtQ7FKIv8lg=;
 b=jZy8hozkxRORO86lvJqd7ZSXG1Jr/0apSyRNsWKHY2jCK2IwegvQ84cQyJjx20Nb37
 uBECkCqN1HP/OXhR/+mJ2OkXoLKj9+cLxo1WJ57iMaPggT+8xOZ3xAD1SYugUriJ1ELN
 FWFOAUD4reZfkFTaWWifzJJHdTdN4X/WJrAMyIpA1FnA165t29cTv5SXblCNKu4x8tEE
 ZNtLSfzQX5KzZGWZx66+g6aBGx/MTrIF5zngf/P3T2POFMfswVc8RKmE5n+gbtEjle0G
 lq+OA12Ecnp3jk94ObJrx4n13gWjhL/j6UF/SDTdHhblaB9gHJJN6lDf147GcsDaQ5Oe
 kHZw==
X-Gm-Message-State: ACrzQf383ZRE8y/aH8h+Tlo6n9KCx8Dsk8tcO0e0Fvi9RxVCEEtmEduF
 vIcMnivw7kBIod7bUMfxuFixvzisCIXt13SkeSw=
X-Google-Smtp-Source: AMsMyM4lTi5uspvKvV2ohJIlwIQvGEIaAolEYEc5eOOvIYNv9/VNxF85U7Up7dqEWyzFjNOee/RwQRzCaEGFr7k63Fc=
X-Received: by 2002:a1f:e444:0:b0:3ab:2991:56d1 with SMTP id
 b65-20020a1fe444000000b003ab299156d1mr10395378vkh.16.1665477522535; Tue, 11
 Oct 2022 01:38:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6130:413:0:0:0:0 with HTTP; Tue, 11 Oct 2022 01:38:41
 -0700 (PDT)
From: Jessica Becker <sawadogobraham1@gmail.com>
Date: Tue, 11 Oct 2022 01:38:41 -0700
Message-ID: <CADSTD6XdN=skwkfMxv6VR7NzGCDNgxzXcsxpH_kPhyhRkoEbvQ@mail.gmail.com>
Subject: Request!!!
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AgTXuEw/pEaG30kf0ItQqTQmOBjyx1M6FtQ7FKIv8lg=;
 b=Av3WJbRBKd1PrGj+HXp6Syrpi/XjaBzUBFL9kqEWQ3hDt04p0I7mv+Hrv+XEOPnk0Q
 Z4gzMsJSKodBOZ1Z+HrkURKEq+zk5KQTFCTvtG288aJV3OFzdxHuMSjZdjq53FQ6pwqK
 A/JbrHFaZVzVGaiHGZl9ba+0o5ZDEECYOQkF0xG7dtBZ56PI3H/xA22wgutO3T+NeJ0B
 SBHOwK1HjRtYt3XeQQnzCNUZGB5qwrIXXzk6whq2QaA+q4Ck6HRTgLWKC5pwoy41W4Y7
 11Rx/gM546MMRmorf96MATRLS72TSB7e+c7iKEG2bvix1L6tScGhs+8tnOoJGBE3Vjvf
 NQPg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Av3WJbRB
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
Reply-To: jessicabecker7410@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Beloved,

	I am Mrs Jessicer Becker from (Philippine)  I was married to former
British ambassador to Burkina Faso for nine years before he died in
2004, I have a dream and desire of building an orphanage home, and i
have a deposit fund to the project, but presently my health condition
we not allow me to carry out the project my self, now my doctor has
already told me that I have just few period of time to leave because
of my breast cancer disease, can you help fulfill this project.

With kind Regards,
Mrs Jessicer Becker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
