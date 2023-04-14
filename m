Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF7A6E21BC
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Apr 2023 13:07:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 363494284D;
	Fri, 14 Apr 2023 11:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 363494284D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zpf0TsHctKv2; Fri, 14 Apr 2023 11:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBD1842842;
	Fri, 14 Apr 2023 11:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBD1842842
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3B101BF32A
 for <devel@linuxdriverproject.org>; Fri, 14 Apr 2023 11:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 872E8403A2
 for <devel@linuxdriverproject.org>; Fri, 14 Apr 2023 11:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 872E8403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7xUXNyIn3qG for <devel@linuxdriverproject.org>;
 Fri, 14 Apr 2023 11:07:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16F144014D
Received: from mail.posteburundi.bi (mail.posteburundi.bi [196.2.15.142])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16F144014D
 for <devel@driverdev.osuosl.org>; Fri, 14 Apr 2023 11:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.posteburundi.bi (Postfix) with ESMTP id B080421C55A3;
 Fri, 14 Apr 2023 12:52:59 +0200 (CAT)
Received: from mail.posteburundi.bi ([127.0.0.1])
 by localhost (mail.posteburundi.bi [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id rT_Bop3u-XpH; Fri, 14 Apr 2023 12:52:59 +0200 (CAT)
Received: from localhost (localhost [127.0.0.1])
 by mail.posteburundi.bi (Postfix) with ESMTP id 0871F21C53E4;
 Fri, 14 Apr 2023 12:52:59 +0200 (CAT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.posteburundi.bi 0871F21C53E4
X-Virus-Scanned: amavisd-new at posteburundi.bi
Received: from mail.posteburundi.bi ([127.0.0.1])
 by localhost (mail.posteburundi.bi [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bvE8C-MkUBwx; Fri, 14 Apr 2023 12:52:58 +0200 (CAT)
Received: from [192.168.8.101] (unknown [41.85.163.110])
 by mail.posteburundi.bi (Postfix) with ESMTPSA id C76D821C4D5E;
 Fri, 14 Apr 2023 12:52:50 +0200 (CAT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Representative Needed
To: Recipients <info@posteburundi.bi>
From: Global Trader Company Ltd UK <info@posteburundi.bi>
Date: Fri, 14 Apr 2023 11:52:35 +0100
Message-Id: <20230414105250.C76D821C4D5E@mail.posteburundi.bi>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=posteburundi.bi; 
 s=49734F3E-B0A3-11EC-9971-1E25BC38DE0A; t=1681469579;
 bh=dfzNWNrtmGnDzpFfAqoHDukvC9bBVQxHlsvV6ZwOE+8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=vBlX6joBB2v6olRGrNxTAvlr1j1gCSLjj+IaKu/tTuJxAPsUsjBteMYkuTaWHMQz0
 +z3IpVKOpNuF0Qhq5eC806S1eX4h/LI7VOBpgRjPfIH+R15enL1WBbAV/SaHbciz3Q
 NypqcPI+Q7htRM2qBi50b5UjrvYDha4kt4KudYyifol3vWwjWgQ1faNSkrLjtoUKeN
 duD4ctH/s/X8MCJH6TW9vm5jUqhdOtipH2IK2Y+rkHEKiPZ7EzCg+nivufURsXXixs
 FgvwotYCJdtMPPysbTtCuhw1YtXnxS/yh1J5/KEIFesWt2WfLu7roP687S6Jwh7ffr
 Qfwvd2+rcemaQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=posteburundi.bi header.i=@posteburundi.bi
 header.a=rsa-sha256 header.s=49734F3E-B0A3-11EC-9971-1E25BC38DE0A
 header.b=vBlX6joB
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
Reply-To: potterroger68@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is , Mrs Rita Potter Rogers we need a Company Representative in your city location, you can work online or at home and get good payment, contact us if interested on this Email: potterroger68@gmail.com


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
