Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ED5480AC7
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Dec 2021 16:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AD80405A2;
	Tue, 28 Dec 2021 15:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9jhUnnNVAKUS; Tue, 28 Dec 2021 15:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18875404C1;
	Tue, 28 Dec 2021 15:14:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 541B61BF2BD
 for <devel@linuxdriverproject.org>; Tue, 28 Dec 2021 15:14:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4285440258
 for <devel@linuxdriverproject.org>; Tue, 28 Dec 2021 15:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xO5lIFU1IJK6 for <devel@linuxdriverproject.org>;
 Tue, 28 Dec 2021 15:14:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E8CE40257
 for <devel@driverdev.osuosl.org>; Tue, 28 Dec 2021 15:14:20 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id p13so5768957lfh.13
 for <devel@driverdev.osuosl.org>; Tue, 28 Dec 2021 07:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=bJOWOUOD2GNI/L2WfI6zDQAH0JJ4fURbmjTsxtxR7wA=;
 b=iLKiGqKngKGKuMvK5M9VmF4v12elqEzP7cgV+/GQ9m0MhQGSDQjZoiBkHdYOY0yFJ0
 DUx7dCH1SOQZPLKYyBgkQ/qFxCqEz6kLFlemYpm/GjvWn6v1Znx5ryG6vQOO3XwIyLiR
 LCSyWEC/TQM2XYI4EY8QzNSES6GwBeqao5vgC2S3+yAnOdB0hu2uHOuPyJ0YrQrTYb2g
 IqOW3MW3p22kbqE4CXdWHUp91wPPcgLf3x+bmP2JZ2IuLe/JLWG3YYKJMe3LJQTdpl2H
 zlDXAe+UZ173pMM0uH3WfhwCDGB+RWoUil+it2TThYpaAMG2nurQctgWUJX4vqefgo9Y
 B5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=bJOWOUOD2GNI/L2WfI6zDQAH0JJ4fURbmjTsxtxR7wA=;
 b=JAoPB1BxrMeI3dLtVKSSFDgdD0r/xzTwAI6lZtEeCD3zgrqFneDAijhacrF1G9fkI/
 Ab2F2ndtmZJNKdR8XU+M+DFtDgwtnMS3Sy4H1uQI0DlLxD7RUnEQxGgaj2ik10aa9dxW
 hpCAxmbnKOSWopc24X6jYd7cakTT8wbkNIF8V7li2bufZrJIc4q56zfdMeMgmlsTOu20
 JUWb9kKtOgijjQgqoYoVBRPyd4J+edLthDS40WYVTvWZOa7PSVQkI/pqW8JacGFEHMZb
 fn5syR0S4Rlwn1RnGn8kBRTYabkApGBKo/efDL312nhGYFQ9LWpO4SrNSrbgw1XP2P3d
 3Kpw==
X-Gm-Message-State: AOAM530hM5POQE8oIMzvtXLue23wNh8rYynM6RO4uwfH5M0S11PzWXdn
 SAX1cfkcUqyjWD98qXoIcgZHDyTmRAhdadqkuWE=
X-Google-Smtp-Source: ABdhPJyARi2nnVwYrNan5DK+507GqcdTA2XJkkUlE7LKQGhgUFtOhiuWlcmCHUodGnVV9QrKeslpHqBWPh/yE4hW0j4=
X-Received: by 2002:ac2:5f0d:: with SMTP id 13mr19326487lfq.584.1640704458419; 
 Tue, 28 Dec 2021 07:14:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa6:d8cd:0:b0:15a:2ac9:fecd with HTTP; Tue, 28 Dec 2021
 07:14:17 -0800 (PST)
From: MRS Salem Chantal Lawrence <salemchantal001@gmail.com>
Date: Tue, 28 Dec 2021 07:14:17 -0800
Message-ID: <CAP+w9BZF11ni7ABA1g8SLSFs03We7nuvNaZeHj3g-kC0XYcj=Q@mail.gmail.com>
Subject: ATM VISA DAPARTCARD
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
Reply-To: salemchantal@mail.ee
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention


You have Been Compensated with the sum of 4.6 million dollars in this
United Nation the payment will be issue into Atm Visa Card and send to you

from the Santander Bank of Spain we need your address, Passport and your
whatsapp number.


THANKS
MRS Salem Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
