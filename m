Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8FB314192
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 22:21:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5BFD226EA;
	Mon,  8 Feb 2021 21:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lw66hQ4P40RJ; Mon,  8 Feb 2021 21:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CA3A21526;
	Mon,  8 Feb 2021 21:21:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92E8C1BF388
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 21:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F82485CBC
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 21:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-QDMteEcjsJ for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 21:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDB0085CA3
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 21:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=O86lNpBRnEs3afDwWTUQ9xX0klYvN5RBrVkkBYUenXk=; b=Ifxj6MBivODlzSxqgWEv6GG6EB
 sPXNpzVIZRxjOLl26t3TMSnwm330607ESm7Hfc2Vl3W5MkPjGATg2FThUI0x4pQNsJN3ncXOvO0vy
 2i3DndUZ6jpn6Hel8mVLvUXjlHwyMDAk06/QhqOV68DlhMCx+mfmsd2vZoK/0a3S2LlrlLxrMO6ru
 wQBvNQOa0jTuaPASxNZw6c7zbJd/LLtvIqMb/QAuPLtHS9yDGUXJvrZM8qqSM16UfbjQ188frrr04
 N46Z0gI3/7aB3+HiwDy9IESkmcWBwgx1wlVXvvli2pq7rclR8nni27xUQqy5erZNfDva2mJjEDxeO
 6/jTSCMw==;
Received: from [2601:1c0:6280:3f0::cf3b]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9Dy3-0000yK-10; Mon, 08 Feb 2021 21:21:11 +0000
Subject: Re: [PATCH]: checkpatch: Fixed styling issue
To: Mukul Mehar <mukulmehar02@gmail.com>, gregkh@linuxfoundation.org
References: <20210208195116.GA19781@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <912a1fcf-4298-5416-805d-3571df66d4d8@infradead.org>
Date: Mon, 8 Feb 2021 13:21:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210208195116.GA19781@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/8/21 11:51 AM, Mukul Mehar wrote:

More comments (probably duplicates):

a. The "checkpatch:" in the subject says that you are making a patch
to the "checkpatch" script. You are not doing that. The subject should
be more like: "staging: most: fix a style issue in sound.c" e.g.

b. This comment:
This is my first patch.

should not be in the comment message. If included at all, it should be
after the "---" line, like so:

---
This is my first patch.

<then the diffstat>.


thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
