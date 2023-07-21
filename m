Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B66A75C3D8
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jul 2023 11:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 75019403C0;
	Fri, 21 Jul 2023 09:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75019403C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVEND3P4IEeJ; Fri, 21 Jul 2023 09:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37D4440135;
	Fri, 21 Jul 2023 09:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37D4440135
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63FF91BF276
 for <devel@linuxdriverproject.org>; Fri, 21 Jul 2023 09:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 353D141EB4
 for <devel@linuxdriverproject.org>; Fri, 21 Jul 2023 09:58:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 353D141EB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBvvqUCoVFHc for <devel@linuxdriverproject.org>;
 Fri, 21 Jul 2023 09:58:23 +0000 (UTC)
X-Greylist: delayed 1942 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 09:58:22 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86CAE41E7B
Received: from portalia.es (unknown [185.76.77.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86CAE41E7B
 for <devel@driverdev.osuosl.org>; Fri, 21 Jul 2023 09:58:22 +0000 (UTC)
Received: from webmail.portalia.es (localhost.localdomain [IPv6:::1])
 by cranky-rosalind.185-129-248-31.plesk.page (Postfix) with ESMTPSA id
 B9896211B0; Fri, 21 Jul 2023 11:07:12 +0200 (CEST)
Received-SPF: pass (server.idealis.es: connection is authenticated)
MIME-Version: 1.0
Date: Fri, 21 Jul 2023 09:07:12 +0000
From: "Mr. George Clifford" <mjose@portalia.es>
To: undisclosed-recipients:;
Subject: RE RE Donation >>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <9e06cc4a2e301e1a1a502afda1749e33@portalia.es>
X-Sender: mjose@portalia.es
X-PPP-Message-ID: <168993043456.5700.10448235952073824252@localhost.localdomain>
X-PPP-Vhost: portalia.es
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=portalia.es; s=default; t=1689930448;
 bh=VtI+cICcLgiVwyeUjNf4UJTVRwu+UTRCSwoQGDhEHpI=; h=From:To:Subject;
 b=Qjq9Ncv10JAyve1yIHoIqkhwjEw9arG7pszqaT1shE+Xz2olpyb9grwhlf9mxrl6j
 acIZfGK5XSHFJEkO/FLfhXeh0+zj9Yi/EUV9smURfxaScaymVW6fke+/ROPegaRpaa
 BhVk9UfByQdO3AWt9sQ4lIyQV9lJwhKB+uDjPt3k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=portalia.es header.i=@portalia.es
 header.a=rsa-sha256 header.s=default header.b=Qjq9Ncv1
X-Mailman-Original-Authentication-Results: server.idealis.es;
 spf=pass (sender IP is ::1) smtp.mailfrom=mjose@portalia.es
 smtp.helo=webmail.portalia.es
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
Reply-To: mrgoergeclifford@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
The sum of $7,000,000.00 dollars has been donated to you by Success.
Donation Foundation, you are to reply to this mail to claim your
donation funds, you are to contact immediately stay safe. THIS IS YOUR
DONATION CODE: [ 0043034]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
