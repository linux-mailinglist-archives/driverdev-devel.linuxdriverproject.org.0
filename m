Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3416AAF58
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 13:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DECF381D11;
	Sun,  5 Mar 2023 12:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DECF381D11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQ3HQ6GDqj5t; Sun,  5 Mar 2023 12:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE8A6812B2;
	Sun,  5 Mar 2023 12:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE8A6812B2
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A94EC1BF35C
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90782812CD
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90782812CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UI6eJ4cYAjgR
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CED80812B2
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CED80812B2
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 12:08:38 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id a25so27963151edb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Mar 2023 04:08:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X/CzDNddB0kx26rf/LDhmne0+vrvAsGm9OJmrB2pG+o=;
 b=GO0GWVeAqO2Ltz/OaWbT6onhJPwb+DQwb8K57A5CI5TrD8SojTleKUFXoFCa+g8GyB
 Wi8SqMguuH1MMIGxo6wnNK/abV2ZNcJvfbbwwJ5epYHewa7EqaDbbT9HkdyCvy7AsNRj
 9pyQ5xnPn6SjxWPsP4qOtIG13kSd2xBYylTwhTHzKieDiwEoaYC5eSzYtNBU1ccH2h2P
 oTIZeIsgo1DFSQMClm7BbIQC+frHtnZd7pP5K80eA9mU23cMj5SkZPnS7c3Z8IxEKAMG
 YkrUozgCNTAa98+oFhF45r47Q2CAWc0u0rNs/gYuMq67olTGfv7RDCgXrU6QSki7pLui
 dryQ==
X-Gm-Message-State: AO0yUKWTCSaN2onpSN9h11oQNjCfVwybHC8JwejvuGv+sCRkTp172Bcj
 l7xD5+dbRP/q5ykxY4xvt7fGf63Iz8T7Ary9HY4=
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
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
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
