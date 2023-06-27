Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A257405A2
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jun 2023 23:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D632940BB6;
	Tue, 27 Jun 2023 21:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D632940BB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6z2jTJZy8h-e; Tue, 27 Jun 2023 21:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE82040B9C;
	Tue, 27 Jun 2023 21:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE82040B9C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8473B1BF38C
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 21:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68D15822EE
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 21:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68D15822EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afmitVVD05CR for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 21:33:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657518226B
Received: from mail.nsts.go.ke (unknown [102.23.136.209])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 657518226B
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 21:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.nsts.go.ke (Postfix) with ESMTP id 489C56042A2
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 22:03:36 +0300 (EAT)
Received: from mail.nsts.go.ke ([127.0.0.1])
 by localhost (mail.nsts.go.ke [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z3yYDP7xZJq1 for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 22:03:36 +0300 (EAT)
Received: from localhost (localhost [127.0.0.1])
 by mail.nsts.go.ke (Postfix) with ESMTP id F2D9D5ABCAA
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 22:03:35 +0300 (EAT)
X-Virus-Scanned: amavisd-new at nsts.go.ke
Received: from mail.nsts.go.ke ([127.0.0.1])
 by localhost (mail.nsts.go.ke [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 2jZ77WLK6l6k for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 22:03:35 +0300 (EAT)
Received: from [193.169.252.111] (unknown [193.169.252.111])
 by mail.nsts.go.ke (Postfix) with ESMTPSA id 8B4A2161816
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 22:03:35 +0300 (EAT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: URGENT MAIL
To: devel@linuxdriverproject.org
From: "Mr. Ronald Evergreen <said"@desaque.com
Date: Tue, 27 Jun 2023 12:03:51 -0700
Message-Id: <20230627190335.8B4A2161816@mail.nsts.go.ke>
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
Reply-To: evergreen5565343@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi There,

How are you doing? I am sorry to have contacted you this way but it is a matter of great urgency. I seek your partnership on an important business transaction which will be of great benefit to both of us. I seek to work with you to claim as next of kin to
late John Shumejda who died in a plane crash some years back, You can read more about his death on the BBC news link below:
http://news.bbc.co.uk/2/hi/uk_news/england/1742404.stm

Write to me on:
( evergreen5565343@gmail.com ) and we can talk more about this.


Yours faithfully.
Mr. Ronald Evergreen,
Financial Officer.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
