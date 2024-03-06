Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813F873224
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Mar 2024 10:11:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3259741752;
	Wed,  6 Mar 2024 09:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 027yYPfhetYq; Wed,  6 Mar 2024 09:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 323AB41751
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 323AB41751;
	Wed,  6 Mar 2024 09:11:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC2C11BF5A3
 for <devel@linuxdriverproject.org>; Wed,  6 Mar 2024 09:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C87874174F
 for <devel@linuxdriverproject.org>; Wed,  6 Mar 2024 09:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9aD_QR8pbaKG for <devel@linuxdriverproject.org>;
 Wed,  6 Mar 2024 09:11:42 +0000 (UTC)
X-Greylist: delayed 341 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Mar 2024 09:11:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 58044416AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58044416AC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.95.16.86;
 helo=mail.alphaplcred.com; envelope-from=edric.croke@alphaplcred.com;
 receiver=<UNKNOWN> 
Received: from mail.alphaplcred.com (mail.alphaplcred.com [141.95.16.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58044416AC
 for <devel@driverdev.osuosl.org>; Wed,  6 Mar 2024 09:11:41 +0000 (UTC)
Received: by mail.alphaplcred.com (Postfix, from userid 1002)
 id 27CAFA2CA4; Wed,  6 Mar 2024 09:05:58 +0000 (UTC)
Received: by mail.alphaplcred.com for <devel@driverdev.osuosl.org>;
 Wed,  6 Mar 2024 09:05:57 GMT
Message-ID: <20240306074500-0.1.ar.gz6z.0.3hhy5c5peq@alphaplcred.com>
Date: Wed,  6 Mar 2024 09:05:57 GMT
From: "Edric Croke" <edric.croke@alphaplcred.com>
To: <devel@driverdev.osuosl.org>
Subject: Discover innovative educational tools.
X-Mailer: mail.alphaplcred.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=alphaplcred.com; s=mail; t=1709715958;
 bh=mq8xCUF3Dt5ShAQjm74Ayhiawq3ZpKgrbL+ihdzOqxk=;
 h=Date:From:To:Subject:From;
 b=Sz0UG6zPIPkboGytqJMYXwbM6lx11wGrtfuxIp/GFXUAbNeqPdFawrJNa9F+TNVXa
 FQfN4A/1UB30oASwS68aUhuWJOE3DE7T9+xE09gSKBxAAbCZH4qi6tErBzK9EoimQG
 I0SrF5n8AW5re/XRyssYw8HuRiWUMUn850xkO4JlxrAFmOYa223rx9nTXNMrXBYtsy
 imUbBMIUYE5Hw7GJX4xjZ+bae/bFhh2eJKQ5qBKEQzRjOMYyw7Y2Jb3Ui66LoEx0Q3
 3ONatMr3C30T1jmD5q92h9dpMdn38ObLYIgJtABV4gB3l6QL7G7YSktXODlx1RS3DA
 fTacrUgMEASOQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=alphaplcred.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alphaplcred.com header.i=@alphaplcred.com
 header.a=rsa-sha256 header.s=mail header.b=Sz0UG6zP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

We support curriculum creators, scientific equipment providers, and textbook publishers in delivering innovative and effective educational tools.

With over 92 years of experience in creating educational products for students and teachers, our presence in international markets allows us to share our expertise from the perspective of various needs and challenges.

Our solutions enrich the teaching process of STEM subjects, increase student engagement, and improve learning outcomes.

We offer a wide range of products, starting from laboratory equipment (biology, chemistry, physics) for all educational levels, to biological specimens (live and preserved organisms), anatomical models, laboratory chemicals, scientific equipment, and ready-made sets for working with students in lessons.

Our curriculum programs tailored for elementary schools, middle schools, and higher education institutions provide support on multiple fronts, allowing for utilization in various educational environments, including remote learning.

Could I present how our products can contribute to the development of your company?


Best regards
Edric Croke
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
