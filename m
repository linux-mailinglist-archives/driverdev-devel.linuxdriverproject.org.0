Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACBF7FAAA6
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Nov 2023 20:52:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2998160F49;
	Mon, 27 Nov 2023 19:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2998160F49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gXs91X1Tbb8X; Mon, 27 Nov 2023 19:52:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EABA660F1F;
	Mon, 27 Nov 2023 19:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EABA660F1F
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0144A1BF479
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 19:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC4774074E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 19:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC4774074E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoYSx1BWI_Hv
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 19:52:48 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17EF4400CB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 19:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17EF4400CB
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-6bd0e1b1890so3908194b3a.3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 11:52:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701114767; x=1701719567;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PBy7GgOJiogOwvcFmLqia6UfOspV6dm6M/Sk87LaocY=;
 b=HEVUSwAwTVZ8n1euIg/UnG2Z0eC7WphdRDX3ATHVLbAeBwyW8NNqGwFcrYB/6sGBnC
 fi8oPtPHCvfQHPVkgkcOzX+M+0ruchnsVgvZ73gq0/CTIYswLvIM0QsptUnBqgYnhenz
 j49nHjjcR/IRYgZ7UO9Qz1Wp7H3cUBN/sIWcJraIFrkqhhLIxvss8okSMX7G/M0yXzI4
 iMDD5eHl61UPhp0NKP01tgNbsu2iSi6Yo5z+25cot9vRnyS6++vbCS8wRARI/HG3ZFvH
 ncwffJ1dhAV5/IR4KEbjbngQ+ADvY3v32+R2GmE1rjkhlGyOLiwqxBWHXPL83JuYukZV
 +YoA==
X-Gm-Message-State: AOJu0YwGPJ/TrL54Gxmb8CBU9aDXpinRDp2vTff9KW3gBSmJc7ercK+S
 vqcvoSfxlkxV2L7W3dtx8dEfr3xzCRsHsCUfsyM=
X-Google-Smtp-Source: AGHT+IGarP+00BMmVoxXJ153n5T2MTJjKqEBR55haS51nf8XhY1rm7mrCQbDyy8T5i4Dp3L44XHshp2RoW0brIcsIBA=
X-Received: by 2002:a05:6a00:2e19:b0:6cb:a431:2d75 with SMTP id
 fc25-20020a056a002e1900b006cba4312d75mr14872939pfb.7.1701114767330; Mon, 27
 Nov 2023 11:52:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7022:1203:b0:6f:a3b2:43a7 with HTTP; Mon, 27 Nov 2023
 11:52:46 -0800 (PST)
From: "Mr. MR Merrick Garland" <priscillajoshua209@gmail.com>
Date: Mon, 27 Nov 2023 11:52:46 -0800
Message-ID: <CAOAnwg8d0OnHUDXdii_Pfmt6N64Ub==YQ=PBED7xegTMghRjmQ@mail.gmail.com>
Subject: Attention Dear Customer,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701114767; x=1701719567;
 darn=linuxdriverproject.org; 
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PBy7GgOJiogOwvcFmLqia6UfOspV6dm6M/Sk87LaocY=;
 b=J6jtW8hizEIqyzQ3tZ515UDAIwM0jKRlCbqn1xdYBdndk8y5IZCtdH8iMj5xzWHIZJ
 y/zM5zNW9yJYI09isMMQ571n8s1893/SowibmOVPUPoQ/jMEhA0Q6Gj2SXiLQoa3RP3J
 DqvThhQZyFcP1sTa6Gi7+GOyADqY1D/BYPN6Sa0GYlIl4RJntFsmxQXvSwz5j1Vrq4YD
 5t6kQZI8nWnBezNt4rS6ORGVDasetzchB3RSXLq2uBZd7iN5ebORdQV9HaANsrhqmq2S
 AK+5yvf2OnDHTAJxSec1ngF+jGO84BlwgBPRjHern4Rn1qQZrvOaBcsfY9r1EvEIds5P
 rWYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=J6jtW8hi
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
Reply-To: officeoffice1025@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Chase bank of united states.
201 north walnut street Wilmington, DC 19801

Attention dear beneficiary

This is to notify you that your fund USD $ 8.5 Million has been programmed in
an ATM visa card for immediate delivery to you upon reconfirming your
physical destination address as all arrangements has been finalized
and to released to you as the legitimate beneficiary of the fund, via
global ATM visa card.

Your ATM visa card worth USD $8.5 Million united state dollars was with a
delivery service here in chase, bank we have waited enough to hear from you
so that your funds can be transferred through chase Bank here, but due
to the late response we decided to credit the fund through ATM card.

Requirements:

1. Full Name__________________________
2. Name of Country/State/City______________________
3. Delivery address________________________
4. Occupation____________________
5Sex________________________
6. Age________________________
7. Personal telephone number______________________
8. A copy of your passport/driver's license____________________

PIN number is (0516) take note, once you get to cash point around your
area and slot the card and enter the PIN number (0516) your card will
be then activated you start to withdraw over there.

Finally, be informed that we have left delivery company for urgent
delivery of your ATM visa card immediately you forward them the
required information, feel free to get in touch with them today.

reconfirm your full information
to receiving  your ATM visa card.

kindly contact this email address officeoffice1025@gmail.com about you ATM CARD

i am  MR Merrick Garland the chase bank manager contact us with you full
information so that your can receive your ATM card at you apartment
successful
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
