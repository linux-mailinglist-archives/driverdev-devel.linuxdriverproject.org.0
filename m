Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBE047F603
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Dec 2021 10:30:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 912E560C2B;
	Sun, 26 Dec 2021 09:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oN7-CNc3m3Mz; Sun, 26 Dec 2021 09:29:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F305C6059A;
	Sun, 26 Dec 2021 09:29:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6D01BF5E6
 for <devel@linuxdriverproject.org>; Sun, 26 Dec 2021 09:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D04C408A0
 for <devel@linuxdriverproject.org>; Sun, 26 Dec 2021 09:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=jllresort.com;
 domainkeys=pass (2048-bit key) header.from=ele.mon@jllresort.com
 header.d=jllresort.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CvU4_M2S0Jf6 for <devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from slot0.jllresort.com (slot0.jllresort.com [62.197.136.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA21C4054A
 for <devel@linuxdriverproject.org>; Sun, 26 Dec 2021 09:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=UiTdZ15VZZrR6aXh1YjL3pBvUqk=;
 b=GZwEEmthF0Vo85iRnGkYbHAr7t0sO6mrzR6cedHTuxXkPLeW1iO925rMZvIH2FMk9wQUCkjPnp0v
 BsyDlg4I+zGiQVQ6g8VgS6gFCKVdNFAHH9uB9tlalflv2S5tFKqQyk/Io8KVuLgh1+NAlBsN4/Fp
 LBYWu1EyrKWdsw3lFDVUdy7gq2fy47MNV7KJ7Skb1Q0zlCdumlKlPpiNdiMBOvFiDbyVPL6JT9Vj
 FZIsDZfTnUmn9LoHU903C+5zjscl7zvcsXtp8DGTqqcTmpVEdDUIVsDz5/bfccp+s8GKdDJbGZqX
 Jlqf9r+h9UmwizyDpaP5UAez74QQq0I6O1eqfw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=fvSM/VP0skERKC42FCqdYrLDEk8+AEJ1VZ7CrncD7Yt9yaE+ngbBZXSFwTEtV2WYcrU6sqkFkn7c
 7TUSGVlzZarCjzUKA3/TS+Sx62pV+899sLy418qig886vfvalSluV3EZIef3davcd4KRaWkeD3Ga
 3/cvS43czCoIZIexULvS/KFHgrbCq6ClPgJWFAC4gYRZME4qg8GjVT/kHjSQy7cnvF0M7dGAOMHw
 7VFLRBrEHu5ALwwloLpFsjqRXM19kD6baEKOc/NnOCkNH8VCh2DF9zm3UM4b85/lO4aoLOHLjeVQ
 y3PYGBo+72fcljbYirnSfQSywv7MPSLrKTuwng==;
From: ele.mon@jllresort.com
To: devel@linuxdriverproject.org
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:31 +0100
Message-ID: <20211226102855.2D877BB1BE0A5C3C@jllresort.com>
MIME-Version: 1.0
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings to you devel,

I was wondering if you got my previous email? I have been trying 
to reach you by email devel@linuxdriverproject.org, kindly get 
back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
