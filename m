Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7FC28FE5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 08:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA8CB2E408;
	Fri, 16 Oct 2020 06:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iEt+46LdGf0d; Fri, 16 Oct 2020 06:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9A91420507;
	Fri, 16 Oct 2020 06:33:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82B3E1BF345
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 06:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EF74882C0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 06:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MCSndN7W0ZW
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 06:33:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cpanel.giganet.cl (cpanel.giganet.cl [190.96.78.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3EDFA882B0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 06:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dplgrout.cl
 ; s=default;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:Reply-To:
 Subject:To:From:Date:MIME-Version:Sender:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fAA24DCNzcxd2rW6V/x2RpzvwUTDpj5k4CJDMsJM84M=; b=OtXZbYb9l4xwIbgaUESVxLRUu6
 QvpGm5EGVbzCm8zcUQv3jVysyCsKjSCK4+A90IYDWvAld9Pce8Wu3TZ9l10/0qDWnt1QK4+rvZMSN
 TNNIvFFsocP47vrYQIo0f+/Uo21NzZ6njDhDm6U+jDvVo7AhHccZjQyYeA8bLOFUN9ASHiADTzcpV
 OeAyz1X3/ZSiRccj+jc5o8OnvAbBpBFrU410jfEhu9QJuq0Xr9h6padKQQwL/jFWr0rke4sPp2rAh
 gfuuExdZKs16/yp9WRa+Mol8VkptgWs4YNe83RWN0G+x+VRzudzyqZUhWdcRDYwSE37FGljqOgv12
 sjPGKF1w==;
Received: from [::1] (port=33630 helo=cpanel.giganet.cl)
 by cpanel.giganet.cl with esmtpa (Exim 4.93)
 (envelope-from <info@controlypotencia.com>)
 id 1kTIpw-0007Ni-UV; Fri, 16 Oct 2020 03:03:32 -0300
MIME-Version: 1.0
Date: Fri, 16 Oct 2020 03:03:31 -0300
From: Ying Chongan <info@controlypotencia.com>
To: undisclosed-recipients:;
Subject: Investment opportunity
User-Agent: Roundcube Webmail/1.4.8
Message-ID: <793b96f562b13bb5a91d470fdf0ecb04@controlypotencia.com>
X-Sender: info@controlypotencia.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.giganet.cl
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - controlypotencia.com
X-Get-Message-Sender-Via: cpanel.giganet.cl: authenticated_id:
 mariapaz.lopez@dplgrout.cl
X-Authenticated-Sender: cpanel.giganet.cl: mariapaz.lopez@dplgrout.cl
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: yingchongan@zohomail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

I am contact you for an opportunity to invest in any lucrative business 
in your country.

We offer a quick loan at low interest rate, if you are interested, 
please reply to yingchongan@gmail.com for more details.

Sincerely: Ying Chongan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
