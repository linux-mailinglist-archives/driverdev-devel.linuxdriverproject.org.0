Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9A933D1E0
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 11:38:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7592B4315F;
	Tue, 16 Mar 2021 10:38:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Osg5ez9N2Vg1; Tue, 16 Mar 2021 10:38:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3B5A43028;
	Tue, 16 Mar 2021 10:38:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 150A01BF23B
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 017424EBBC
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mDRg2v87pXA5 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 10:37:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp94.ord1d.emailsrvr.com (smtp94.ord1d.emailsrvr.com
 [184.106.54.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DCE24C419
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 10:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1615891069;
 bh=jlFTONTY/lD7VZftb17Wa6RLu5kygAH6ASxfDO7wv9U=;
 h=Subject:To:From:Date:From;
 b=D75qKEsFWQXNCr4swhm3kSOLpjzV53XpqU69Mwjc6vumxWG0VUJMSHzSPbMjFvA5I
 6SmsQXf8ki1qaexszUGFIMDW8Is6a4qGDHKAEiV4PX19evn+f1NqNyt9x8PBAL7BBB
 chxCURrRNw3mCb87sJJsIsCqvK4gYoRtfx664tSU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp12.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 98AFDE012E; 
 Tue, 16 Mar 2021 06:37:48 -0400 (EDT)
Subject: Re: [PATCH] staging: comedi: replace slash in name
To: Tong Zhang <ztong0001@gmail.com>
References: <20210314035757.2740146-1-ztong0001@gmail.com>
 <5d7a5e1c-35ab-58cb-ebcd-da5b280c802e@mev.co.uk>
 <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
 <CAA5qM4AJRYndkXSiW5Y4OCFcH97mf6UiiEEox+TQs8-N957mJA@mail.gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <92b7c57b-b645-9965-8157-4ca76a803cba@mev.co.uk>
Date: Tue, 16 Mar 2021 10:37:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAA5qM4AJRYndkXSiW5Y4OCFcH97mf6UiiEEox+TQs8-N957mJA@mail.gmail.com>
Content-Language: en-GB
X-Classification-ID: 87150a44-81ea-421b-a51a-36bfccef82dc-1-1
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
Cc: devel@driverdev.osuosl.org, open list <linux-kernel@vger.kernel.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15/03/2021 20:00, Tong Zhang wrote:
> Thanks Ian,
> I have submitted a v2 patch based on your suggestions.
> Thanks,
> - Tong

Thanks.  I think the only other Comedi driver with the same problem is 
"drivers/staging/comedi/drivers/das800.c".  It passes dev->board_name as 
the name argument of request_irq(), but that is "cio-das802/16" for one 
of the boards supported by the driver.

> On Mon, Mar 15, 2021 at 6:48 AM Ian Abbott <abbotti@mev.co.uk> wrote:
>>
>> On 15/03/2021 10:44, Ian Abbott wrote:
>>> On 14/03/2021 03:57, Tong Zhang wrote:
>>>> request_irq() wont accept a name which contains slash so we need to
>>>> repalce it with something else -- otherwise it will trigger a warning
>>>> and the entry in /proc/irq/ will not be created
>>>>
>>>> [    1.565966] name 'pci-das6402/16'
>>>> [    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
>>>> [    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
>>>> [    1.574200] Call Trace:
>>>> [    1.574722]  proc_mkdir+0x18/0x20
>>>> [    1.576629]  request_threaded_irq+0xfe/0x160
>>>> [    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]
>>>>
>>>> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
>> [snip]
>>> Userspace applications can use these strings to determine the board
>>> type, so changing the strings would break those applications.
>>>
>>> I suggest passing the comedi driver name "cb_pcidas" to request_irq()
>>> for now.
>>
>> Oops, I meant "cb_pcidas64".  But you could reach that via
>> dev->driver->driver_name if you want (where dev is the struct
>> comedi_device * parameter).

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
