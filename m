Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E843184A636
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Feb 2024 21:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7F1340AB8;
	Mon,  5 Feb 2024 20:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7F1340AB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tGzIWjQ-s0t9; Mon,  5 Feb 2024 20:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81C6240A8A;
	Mon,  5 Feb 2024 20:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81C6240A8A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB7DA1BF35A
 for <devel@linuxdriverproject.org>; Mon,  5 Feb 2024 20:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9218560C19
 for <devel@linuxdriverproject.org>; Mon,  5 Feb 2024 20:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9218560C19
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASRZ7kcsiChn for <devel@linuxdriverproject.org>;
 Mon,  5 Feb 2024 20:46:40 +0000 (UTC)
Received: from count.dennvc.com (count.dennvc.com [185.222.163.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A956E60C0E
 for <devel@driverdev.osuosl.org>; Mon,  5 Feb 2024 20:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A956E60C0E
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Remittance Notification!
To: devel@driverdev.osuosl.org
From: "Barclay's Bank Plc, UK" <ruth@dennvc.com>
Date: Mon, 05 Feb 2024 21:46:35 +0100
Message-ID: <0.0.3.592.1DA587468ECC87A.0@count.dennvc.com>
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=dennvc.com; 
 b=Pl+F16V8hw71NUWtnlYpCZSz8C+kP18C3NdUK9kqVJ1wtAGSnvVvZqsiMUfYBhTowWRr5wDO9uOq
 A3lsdBBGe6PJXiGQSgnUUwm7v3tRH3DBPwShu0wi+3kWFVG8d1ccwwzznjf2zSLP5dq61ZpIFWa2
 tUK/v/REE74rQYbSqT2tyR5qUBNa+MKbmInoH/hIx1mxY7CAoRgsn+aLxXXQiegPlEdJDqMTtUCP
 6EOCUhv+sA6LlVGxfhFUiqsI7iIw7eQ4JgSJvyI6ZSFlwcBDl/6EAHH38dr3gI7TMl8Nqo2bdtez
 D+fhcpjwHXMWzkatLvvvBnAKuggzK66LKxCZjA==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=dennvc.com; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID;
 i=ruth@dennvc.com; 
 bh=U+hCe22dpU/wL2HQgKjWCRQWSzA=;
 b=o6gJ/TJcxgU5ENPC2NjJMYyajzws7vnQgUs2C3H7XPSuRhaXMflFDGSnAGQfPhnk05xGAm2QYKpG
 a5+H5svdOAuqwFw0jYU2sO9CtFdfMXNToC8S23SXj3buStigjLfa/7BzRELGB8zpDSTgDBdwgDa2
 TEfX+UetxVdWgHfIBStDQxffaKDkmUl565MtaIpPqBtMr08w1OVaWQzibcibpxRx6k9f7oMZQ/NW
 0XT2YB9lynWiqw4ypb8qRAmO8gifIbACjkVy7/5gH2NhziJw8DsnuMiu6RF4pjiUPsC9ZIQSNmij
 pkaSykPz8cXrobVWYiVmvwGLgXpurwEiyn453g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=dennvc.com header.i=ruth@dennvc.com
 header.a=rsa-sha1 header.s=dkim header.b=o6gJ/TJc
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
Reply-To: helenkeelan@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Barclay's Bank PLC, UK
1 Churchill Place
London, E14 5HP, United Kingdom
http://www.barclays.co.uk

Dear Esteemed Customer,

We at this bank wish to congratulate and inform you that after a thorough review of your Inheritance/Contract funds transfer release documents in conjunction with the World Bank and the IMF assessment report, your payment file was forwarded to us for immediate transfer of a part-payment of US$800,000.00 to your designated bank account from their offshore account with us

The audit reports given to us show that you have been going through hard times by paying a lot of money to see to the release of your funds, which has been delayed by some dubious officials.

We, therefore, advise that you stop further communication with any correspondence outside this office since you do not have to pay any money or fee to receive your funds as you have met up with the whole fund's transfer requirements.

The only thing required from you is to obtain the Non-Residential Clearance to enable us to credit your account directly by telegraphic transfer or through any of our corresponding banks and send copies of the fund's transfer release documents to you and your bankers for confirmation.

Should you follow our directives, your funds will be credited and reflected in your bank account within five (5) bank working days from the day you obtain this Non-Residential Clearance.

For further details and assistance on this Remittance Notification, kindly forward your

FULL NAME:
FULL CONTACT ADDRESS:
TELEPHONE and FAX NUMBERS:

Directly to my private; E-mail: mrs.helenkeelan@hotmail.com/mrs.helenkeelan@tutanota.com

Yours sincerely,
Mrs. Helen Keelan
Head, International Banking Division.
Barclay's Bank PLC, UK.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
