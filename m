Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1027821D77A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:46:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5056E87802;
	Mon, 13 Jul 2020 13:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aoBQODWV7PjR; Mon, 13 Jul 2020 13:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9093877FB;
	Mon, 13 Jul 2020 13:46:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB70C1BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63056893A0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hxx98q6KGiC7 for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:46:45 +0000 (UTC)
X-Greylist: delayed 00:05:22 by SQLgrey-1.7.6
Received: from smtp117.iad3b.emailsrvr.com (smtp117.iad3b.emailsrvr.com
 [146.20.161.117])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6B338939F
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1594647682;
 bh=EOOEcwVnNhrB2zlBpKV9mQ6iQCCp9r/JpMUMZn/KjxE=;
 h=Subject:To:From:Date:From;
 b=NqliLYf9GgJ/eJP5i4hL8VnW0BPztK6ipsf2UCAjGEJ7qZfnaO9sBVSNYCkNDFsU3
 hpBleevxHXz2pWxSK0XbWEK9ErZ2vQOlFBkGBMKSojp4EEdPWT4x0U/SPQwoC+DJF1
 l0aSCYMJff2ZRlNVXDfaE+CEjzgpeSH+yGUBBGQ0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594647682;
 bh=EOOEcwVnNhrB2zlBpKV9mQ6iQCCp9r/JpMUMZn/KjxE=;
 h=Subject:To:From:Date:From;
 b=nDT0A7RUR/VY8HEqxRCvMnOSaEJvCACk4R5PdWr43T9amIFmpBmNJKFitXxOboTv5
 C87MlOnQmrWKz7+bmhSSEmpNDL7tTsIWUxfKhG89jXteSRH/hngRBlySSz02uPOHeJ
 un+FVtvZbHOiWDJq/9lUnVwEkMA9Ti2gehZQU6vs=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp23.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 4A9BEA019E; 
 Mon, 13 Jul 2020 09:41:21 -0400 (EDT)
Subject: Re: [PATCH] Staging: comedi: driver: Remove condition with no effect
To: Greg KH <gregkh@linuxfoundation.org>,
 Saurav Girepunje <saurav.girepunje@gmail.com>
References: <20200712070628.GA18340@saurav>
 <20200713133438.GA3122574@kroah.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <7653a794-d5ed-5d9f-95af-745a88769092@mev.co.uk>
Date: Mon, 13 Jul 2020 14:41:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200713133438.GA3122574@kroah.com>
Content-Language: en-GB
X-Classification-ID: ab442396-f12e-4f1d-b74c-5c5ca72d8073-1-1
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
Cc: devel@driverdev.osuosl.org, saurav.girepunje@hotmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 13/07/2020 14:34, Greg KH wrote:
> On Sun, Jul 12, 2020 at 12:36:28PM +0530, Saurav Girepunje wrote:
>> Remove below warning in das1800.c
>> WARNING: possible condition with no effect (if == else)
>>
>> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
>> ---
>>   drivers/staging/comedi/drivers/das1800.c | 6 ------
>>   1 file changed, 6 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
>> index f16aa7e9f4f3..7ab72e83d3d0 100644
>> --- a/drivers/staging/comedi/drivers/das1800.c
>> +++ b/drivers/staging/comedi/drivers/das1800.c
>> @@ -1299,12 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
>>   			outb(DAC(i), dev->iobase + DAS1800_SELECT);
>>   			outw(0, dev->iobase + DAS1800_DAC);
>>   		}
>> -	} else if (board->id == DAS1800_ID_AO) {
>> -		/*
>> -		 * 'ao' boards have waveform analog outputs that are not
>> -		 * currently supported.
>> -		 */
>> -		s->type		= COMEDI_SUBD_UNUSED;
> 
> What gave that warning?  The comment should show you why this is good to
> keep as-is, right?

One option is to move the comment into the '} else {' part that follows 
this part.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
