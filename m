Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D4C33B04E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:48:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D873644BE3;
	Mon, 15 Mar 2021 10:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gChwRCFtXp6w; Mon, 15 Mar 2021 10:48:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B5EE439EC;
	Mon, 15 Mar 2021 10:48:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11A5F1BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4BAC6F494
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPnlL_kRAxhB for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:48:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp127.iad3a.emailsrvr.com (smtp127.iad3a.emailsrvr.com
 [173.203.187.127])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A3B360707
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1615805320;
 bh=ID/APZIEOSDLvZtwNC0fyYc9o96mxOxli1drtsMViJI=;
 h=Subject:From:To:Date:From;
 b=SZe3qWNzYovz0C0jDIhxzIzjAPkslNN0MOMVeOb5vWivQ9mzGe+7ZaF9Ux34lu/OX
 A6HNhvEzPUSbdVO4t75ULGszVj1bSYvgSg8739wudP24ji9vivqd3eQLrKb/itn6Ef
 UaReDGOakxmQnctFNcvV5bAOmRnlX2oHDHz9wdqE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp24.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 512E524A8D; 
 Mon, 15 Mar 2021 06:48:39 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: replace slash in name
From: Ian Abbott <abbotti@mev.co.uk>
To: Tong Zhang <ztong0001@gmail.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20210314035757.2740146-1-ztong0001@gmail.com>
 <5d7a5e1c-35ab-58cb-ebcd-da5b280c802e@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
Date: Mon, 15 Mar 2021 10:48:38 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <5d7a5e1c-35ab-58cb-ebcd-da5b280c802e@mev.co.uk>
Content-Language: en-GB
X-Classification-ID: 67750dd0-3b78-4775-abde-c905b639c76c-1-1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15/03/2021 10:44, Ian Abbott wrote:
> On 14/03/2021 03:57, Tong Zhang wrote:
>> request_irq() wont accept a name which contains slash so we need to
>> repalce it with something else -- otherwise it will trigger a warning
>> and the entry in /proc/irq/ will not be created
>>
>> [    1.565966] name 'pci-das6402/16'
>> [    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
>> [    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
>> [    1.574200] Call Trace:
>> [    1.574722]  proc_mkdir+0x18/0x20
>> [    1.576629]  request_threaded_irq+0xfe/0x160
>> [    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]
>>
>> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
[snip]
> Userspace applications can use these strings to determine the board
> type, so changing the strings would break those applications.
> 
> I suggest passing the comedi driver name "cb_pcidas" to request_irq()
> for now.

Oops, I meant "cb_pcidas64".  But you could reach that via
dev->driver->driver_name if you want (where dev is the struct
comedi_device * parameter).

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
