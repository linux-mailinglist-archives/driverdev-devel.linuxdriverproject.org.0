Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C706AAF59
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 13:08:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D02781250;
	Sun,  5 Mar 2023 12:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D02781250
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iAdwHuvA6Oy; Sun,  5 Mar 2023 12:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D21781CE9;
	Sun,  5 Mar 2023 12:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D21781CE9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B98291BF35C
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 12:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D36B40447
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 12:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D36B40447
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StjQhi33j7AV for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF7D1403B3
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF7D1403B3
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 12:08:38 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id x3so27597727edb.10
 for <devel@linuxdriverproject.org>; Sun, 05 Mar 2023 04:08:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X/CzDNddB0kx26rf/LDhmne0+vrvAsGm9OJmrB2pG+o=;
 b=G0Us4nfbQyNit2ztreidwdkZcbsFBT07BVIUxLJ9NbuBgA1lBDVlUIcRzdMQyya55j
 gt2/Cc+cx4vpq0tERI6YdzPHuhO8O+gkzzRNak6d0cB7BvCc7dOmE5hm+eMEVUT3wH27
 +/RPUMnqyC/wHawPBclsqLzDUsX76fhD18YCxV+SAwSze5sU1wFykSyyDaW0etVL1Fgy
 ShM7Z0YpE768eFj+fie8WvBOdaoEd1na1CPh+2kQmWlao38EJAy1bltfSkjrle5ZtXpm
 UQ+iq9LIpUfqXetUARUqqTdBYQSHHWKKY2Ln6mokpwCAWxOCaxI8K1EvsIP0drK+0nat
 ckLQ==
X-Gm-Message-State: AO0yUKUsrmGqmLS2mAN0XS+S6z5c7GinukJzIHTMTAnACFCcr89XXOKh
 HLIqbyC9sOgeFYcKJ4by9CadZL6fATOrzrA5aTE=
X-Google-Smtp-Source: AK7set/OOuTvTvF4sUmyUAjm72Qx4DPWMpnVQWiojvcPgzFrfcv0UtYi+teErHfKRWMvy3EXfSk4E8bp798RW869oqU=
X-Received: by 2002:a17:906:338b:b0:879:e5b2:e12d with SMTP id
 v11-20020a170906338b00b00879e5b2e12dmr3129699eja.13.1678018116314; Sun, 05
 Mar 2023 04:08:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:628c:0:0:0:0 with HTTP; Sun, 5 Mar 2023 04:08:35
 -0800 (PST)
From: FUND MANAGEMENT AND PAYMENT BUREAU <kamuliolive22@gmail.com>
Date: Sun, 5 Mar 2023 04:08:35 -0800
Message-ID: <CAMojCfFm-JnLEmSts-qbZykiDd1RqsJJRDFP13Sw=wx+a8PxWQ@mail.gmail.com>
Subject: HOW ARE YOU DOING TODAY
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X/CzDNddB0kx26rf/LDhmne0+vrvAsGm9OJmrB2pG+o=;
 b=KrIzfPmXdZ9oZ1u3zIOEKw8nAK9xzfeZwLZvVK4Ri755DE6IWyPYpEj7pOLHrJQdn3
 T8+0awWCaMF6OeRpR7qzJ12DfY//YsWNPMGBl82+hMeuHDz7yS4cSEPFMOZFuD/0aAfn
 ntyDmkusKD4BCD/JuMdEId459KpUwlaMXe3omD4ihUqhL28X08Bua0P3XM9tAUZOWqJJ
 cxOPRVvpW3YVBIhtsBT7b0Ke/L8QmbKvMJAU0MqfdYxjh2CIlz2ENzCsgasIKOYNdGRV
 nrTHR5YADuFCKqDNhphFLKEfU7oeSPFPRyAupOFwo+8PvOr9OJQja8xG1Ayi9w8Y27Ly
 fNJQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KrIzfPmX
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
