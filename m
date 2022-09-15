Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C24C75B9503
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 09:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F3FB60FF4;
	Thu, 15 Sep 2022 07:00:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F3FB60FF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q5R22abSxDUE; Thu, 15 Sep 2022 07:00:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 573F460FF3;
	Thu, 15 Sep 2022 07:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 573F460FF3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FC911BF873
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 07:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B1B340488
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 07:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B1B340488
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3UYzxS70c2Sx for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 07:00:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 708C94039D
Received: from puremedia.kr (unknown [112.217.191.162])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 708C94039D
 for <devel@driverdev.osuosl.org>; Thu, 15 Sep 2022 07:00:40 +0000 (UTC)
Received: from [212.193.29.43] (unknown [212.193.29.43])
 by puremedia.kr (Postfix) with ESMTPSA id 0597D29683A6;
 Thu, 15 Sep 2022 13:32:04 +0900 (KST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Final Notice +
To: Recipients <help@puremedia.kr>
From: "info" <help@puremedia.kr>
Date: Wed, 14 Sep 2022 21:32:03 -0700
Message-Id: <20220915070041.0B1B340488@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=puremedia.kr; s=default; t=1663216325;
 bh=2Rv2JnaWz+Rheki0Nd0sIyI2MTd7VYd8+0Ah19uULBA=;
 h=Subject:To:From:Date:Reply-To:From;
 b=utSk/rZKwJb5I9iP9L+vsZxWYlhiH8aPvuhqBY5vP35PSkXLSVWFXZEkks5Hbf9DC
 FxjRaJKzLsr1HXEU6Po+VCyZwFD7AKBkx7jmSmiFiph3onDCIwdH0TCdWN1BZiUyOi
 GXxPp3kC6v6RyURojIaTTLp4L2PByv84oL/m2rsCNh9MvL8l9wCAnL5rjHrZl7O4XX
 8b81leK+pHA19j9wOy+ZtiHXRbyTvmG6MetL84u5JNHDCn35bIu3IbjyacqlbOOeST
 h+7ZM5fCytSowsCZ39CUrqUe1d3jB95zDTwN3XbGX79thy+pl2I8Ww5pNd5IHQ9E5g
 PdMtC9NTs6VXw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=puremedia.kr header.i=@puremedia.kr
 header.a=rsa-sha256 header.s=default header.b=utSk/rZK
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
Reply-To: simpson1011@zohomail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are reaching you once again as regards the estate of Late George, you were made one of the beneficiaries of his estate. Do get back to me at your earliest convenience. Trustees
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
