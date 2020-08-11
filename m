Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E188241932
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Aug 2020 12:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD5282201C;
	Tue, 11 Aug 2020 10:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7MLs3+WOjIsZ; Tue, 11 Aug 2020 10:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D977B2048F;
	Tue, 11 Aug 2020 10:01:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E36A1BF3C4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 10:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B0BF87C09
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 10:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WvNcvMQa0VAl
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 10:01:41 +0000 (UTC)
X-Greylist: delayed 01:43:11 by SQLgrey-1.7.6
Received: from pfp2-psdkmjkt.imigrasi.go.id (mx01.imigrasi.go.id
 [36.91.73.239])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5420B87B9B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 10:01:39 +0000 (UTC)
Received: from pps.filterd (pfp2-psdkmjkt.imigrasi.go.id [127.0.0.1])
 by pfp2-psdkmjkt.imigrasi.go.id (8.16.0.27/8.16.0.27) with SMTP id
 07B8H0n3080764; Tue, 11 Aug 2020 15:17:34 +0700
Received: from mta02.imigrasi.go.id ([10.0.49.130])
 by pfp2-psdkmjkt.imigrasi.go.id with ESMTP id 32scdu99fg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 11 Aug 2020 15:17:34 +0700
Received: from localhost (localhost [127.0.0.1])
 by mta02.imigrasi.go.id (Postfix) with ESMTP id D65473006E9F6;
 Tue, 11 Aug 2020 15:17:25 +0700 (WIB)
Received: from mta02.imigrasi.go.id ([127.0.0.1])
 by localhost (mta02.imigrasi.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id fQcMc1DwREw3; Tue, 11 Aug 2020 15:17:25 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mta02.imigrasi.go.id (Postfix) with ESMTP id E75B13007CA28;
 Tue, 11 Aug 2020 15:17:16 +0700 (WIB)
X-Virus-Scanned: amavisd-new at 
Received: from mta02.imigrasi.go.id ([127.0.0.1])
 by localhost (mta02.imigrasi.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fn497e-wxzA6; Tue, 11 Aug 2020 15:17:16 +0700 (WIB)
Received: from [192.168.100.12] (unknown [175.100.60.226])
 by mta02.imigrasi.go.id (Postfix) with ESMTPSA id D1E923006E9F1;
 Tue, 11 Aug 2020 15:17:07 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Good Day
To: Recipients <portal@imigrasi.go.id>
From: "Maggie Wang" <portal@imigrasi.go.id>
Date: Tue, 11 Aug 2020 15:17:06 +0700
Message-Id: <20200811081707.D1E923006E9F1@mta02.imigrasi.go.id>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-01-03_04:, , signatures=0
X-Proofpoint-Spam-Reason: safe
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
Reply-To: maggiemwang777@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings My Dear Friend,

I have a business proposal to share with you. 

Kind Regards,
Maggie Wang
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
