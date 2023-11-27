Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AEB7FAAA4
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Nov 2023 20:52:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B6BD60F4E;
	Mon, 27 Nov 2023 19:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B6BD60F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mQzwVpoBIgD; Mon, 27 Nov 2023 19:52:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFAE260F49;
	Mon, 27 Nov 2023 19:52:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFAE260F49
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC60C1BF479
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 19:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3D66817C0
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 19:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3D66817C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAqCn6q23dJc for <devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 19:52:09 +0000 (UTC)
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33D18813A9
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 19:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33D18813A9
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-5bdb0be3591so3642027a12.2
 for <devel@linuxdriverproject.org>; Mon, 27 Nov 2023 11:52:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701114728; x=1701719528;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PBy7GgOJiogOwvcFmLqia6UfOspV6dm6M/Sk87LaocY=;
 b=qIORnBbERTZh8Fl9IfTEzny4JyjTedZ9L0gn+mQLYGL2l+U7Ohb0YZXfCApmjiFndo
 tGzlLcLXyeijj0K+V+6Rs0Vgr6K6l+xmSfL3KvpbWDLmSlMRcn5wwlvl8Mt6M4JUUmRe
 VhUhsFViB1kIdULWzMWwqS/HbiV4FCB4JArkar7hXp0SFOvxFODZIVxwqaIEq2Bc9Olv
 VeYgQnnyTpD6beUo70tLICLPqNQFD6BCEsjF0w/8TgSGpWR9VUHbSodSvSGCCWifuhNk
 8UqkA257Gh/eTnp+cnH9ua0PLTIofO+XAisB0B7tzbnD9fGGR9yZcAge7HlaKpuh1OJW
 fqeQ==
X-Gm-Message-State: AOJu0YxYqhQ1fbcEkIJ9YRZ6YeXhqC6oV1hx8ezeTsuziqUaedluli5a
 fDewUJw8cD1LhNZb3gOP2Fa6hF0d07feOuykxRA=
X-Google-Smtp-Source: AGHT+IEYAl38iHi9+xZv3Iz3B7FaJbT6u7fhwl0XsqEu+Ne3ecx+DnRnmqkyQ3+4PpnGzsXFVbtxCn0ekHZxZgMxLUY=
X-Received: by 2002:a17:90b:4d8b:b0:27d:9f6:47a3 with SMTP id
 oj11-20020a17090b4d8b00b0027d09f647a3mr15008892pjb.31.1701114728302; Mon, 27
 Nov 2023 11:52:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7022:1203:b0:6f:a3b2:43a7 with HTTP; Mon, 27 Nov 2023
 11:52:07 -0800 (PST)
From: "Mr. MR Merrick Garland" <priscillajoshua209@gmail.com>
Date: Mon, 27 Nov 2023 11:52:07 -0800
Message-ID: <CAOAnwg-h7nD5wCkdjzwkQvYk=0k00BFRdaGACwHKJudc+WzT=Q@mail.gmail.com>
Subject: Attention Dear Customer,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701114728; x=1701719528;
 darn=linuxdriverproject.org; 
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PBy7GgOJiogOwvcFmLqia6UfOspV6dm6M/Sk87LaocY=;
 b=eYD+QUphO47U1nsjoiBEcCKcu0MuaGtIhZ7p1QTOhaBfeEz+24VUnCkwkYjhcC/TKx
 nhPrbVlEe+zT0saO0ix+zxwBFOHQnNkyvGZ9OxwmtiN3Zv8S471j9Cw8bGOdCcXBKwfE
 NiJoKeck023KyXWzrCRbubP2QQq/OsRp7aFo73yZtB/jcoF5509ZD76GAWHx5HPnB05s
 lBuZXT0jv1z8jMm+l6K8eSu0zwomv4bjME2UBNcH1P2sU2kkGWrV7BpHx+jXDpemMZBK
 BUA+nfHxnZkCfj4byHqicMKWkF+jHxHstOHUGAYH6qZmdpTAnss2o2IpfPo0bmo8xkvl
 2WNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=eYD+QUph
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
