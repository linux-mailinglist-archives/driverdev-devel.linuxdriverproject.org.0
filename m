Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C6A4BD1D5
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Feb 2022 22:19:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 520D340156;
	Sun, 20 Feb 2022 21:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pj6-OHhLgm2; Sun, 20 Feb 2022 21:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ECCD4017C;
	Sun, 20 Feb 2022 21:18:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CAB31BF3D7
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 21:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04B8540291
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 21:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=metropolitassets.xyz
 header.b="CGmd8sPe"; dkim=pass (1024-bit key)
 header.d=metropolitassets.xyz header.b="CGmd8sPe"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90Xl7JwcUFmE for <devel@linuxdriverproject.org>;
 Sun, 20 Feb 2022 21:18:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.metropolitassets.xyz (metropolitassets.xyz
 [62.173.139.111])
 by smtp4.osuosl.org (Postfix) with ESMTP id F09B84028C
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 21:18:48 +0000 (UTC)
Received: from metropolitassets.xyz (ec2-3-89-137-147.compute-1.amazonaws.com
 [3.89.137.147])
 by host.metropolitassets.xyz (Postfix) with ESMTPA id 90C3111FCCA3
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 17:12:30 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.metropolitassets.xyz 90C3111FCCA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metropolitassets.xyz; s=default; t=1645366351;
 bh=F0V0UwkGd3ilh52tQhqKWeOyepzfLAjwBRALY2kUnJA=;
 h=Reply-To:From:To:Subject:Date:From;
 b=CGmd8sPepvA/YpQa3O03JDSJ5d/5QfQnETQ8GnOUbYhz08qffIeGaQvB0A2lzElNU
 vaUYDV2nEFdKYBjvAHB4a39X4f0X0OThWylg58sxMDa9TEWAfyEaa6XUvpzZK809N5
 13GTmX9ZJbS6SaX02N9DLjtcWly8QaQh18flet3s=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.metropolitassets.xyz 90C3111FCCA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metropolitassets.xyz; s=default; t=1645366351;
 bh=F0V0UwkGd3ilh52tQhqKWeOyepzfLAjwBRALY2kUnJA=;
 h=Reply-To:From:To:Subject:Date:From;
 b=CGmd8sPepvA/YpQa3O03JDSJ5d/5QfQnETQ8GnOUbYhz08qffIeGaQvB0A2lzElNU
 vaUYDV2nEFdKYBjvAHB4a39X4f0X0OThWylg58sxMDa9TEWAfyEaa6XUvpzZK809N5
 13GTmX9ZJbS6SaX02N9DLjtcWly8QaQh18flet3s=
From: E Matare <ematare05@metropolitassets.xyz>
To: devel@driverdev.osuosl.org
Subject: Did you get my last email
Date: 20 Feb 2022 14:12:30 +0000
Message-ID: <20220220141230.BD7DBCBCDEF5B942@metropolitassets.xyz>
Mime-Version: 1.0
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
Reply-To: ematare05@metropolitanassetmanager.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day. My name is Elliot Matare. I sent you a very important 
business proposal last week but I am yet to receive a response 
from you as of yet. I am not sure if you did receive the proposal 
or not so if you would be so kind to confirm if you got my 
previous email and if you are interested in what was being 
proposed, I will appreciate it. On the hand, if you I can resend 
it to you if you did not receive my previous message with the 
proposal. Looking forward to your response.

Regards,

Elliot Matare
Metropolitan Asset Managers
Telephone: 010 442 6203
metropolitanassetmanager.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
