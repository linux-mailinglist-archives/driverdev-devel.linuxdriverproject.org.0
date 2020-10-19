Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF442927A9
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 14:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 319058707F;
	Mon, 19 Oct 2020 12:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXhvTKj5xAwX; Mon, 19 Oct 2020 12:51:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACFD087032;
	Mon, 19 Oct 2020 12:51:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA7BB1BF3CD
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 12:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2C4D87382
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 12:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oEgcCYbxTkX for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 12:51:46 +0000 (UTC)
X-Greylist: delayed 00:05:30 by SQLgrey-1.7.6
Received: from smtp94.iad3b.emailsrvr.com (smtp94.iad3b.emailsrvr.com
 [146.20.161.94])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BC2287379
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 12:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1603111575;
 bh=uPmtxSDWLAEgxGD5KN5MPN4+2wIKqu2Lhg0vesSUJtI=;
 h=Subject:To:From:Date:From;
 b=mnMeH45z/3JqUuEC/kxo4BJl5oiunYDTzuTLFh6uFnwx//NH1TpbL4H5nElnuS1Q1
 DfMjaTVK7LnqNXckwDLRs25U1KOrbFG6Fr+5zces9lfzLAbCe5uQwKN+TVcr+7V3Fr
 4UJcW6g4akfm8r0CGrTA+OFjwW1YrrdT6Blznfp4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1603111575;
 bh=uPmtxSDWLAEgxGD5KN5MPN4+2wIKqu2Lhg0vesSUJtI=;
 h=Subject:To:From:Date:From;
 b=P7veTeDyNjymtNwBgo7wrTHm9IYYrJv6qD87O2ex/ZOLplb+4sZSZjldC7l0zQTfR
 y1vlgEfH7GHRO1sIN9thULnVCldSGm55kZhSzzYw2qKmKO6FGGqpmv6hLOK1lIHISh
 1W+M8MObaVtHpVpIf2F2D/ZmYBxonOHtTwj9xYOc=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp20.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 8DC7DA009D; 
 Mon, 19 Oct 2020 08:46:14 -0400 (EDT)
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine split
 lines for improved readability
To: Deepak R Varma <mh12gx2825@gmail.com>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
 <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
 <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
 <20201019105731.GB9681@ubuntu204>
 <3bcf050c-97e4-666a-20fd-44585a913a8d@mev.co.uk>
 <20201019114954.GA11996@ubuntu204>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <1b626f7c-b0ce-f42a-99df-28562bc90e5d@mev.co.uk>
Date: Mon, 19 Oct 2020 13:46:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201019114954.GA11996@ubuntu204>
Content-Language: en-GB
X-Classification-ID: 975a12be-1bbe-4908-bfeb-962d7fd3ef12-1-1
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
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 19/10/2020 12:49, Deepak R Varma wrote:
> On Mon, Oct 19, 2020 at 12:34:15PM +0100, Ian Abbott wrote:
>> On 19/10/2020 11:57, Deepak R Varma wrote:
>>> On Mon, Oct 19, 2020 at 12:41:14PM +0200, Julia Lawall wrote:
>>>>
>>>>
>>>> On Mon, 19 Oct 2020, Ian Abbott wrote:
>>>>
>>>>> On 18/10/2020 20:49, Deepak R Varma wrote:
>>>>>> Instructions split on multiple lines can be combined on a single line
>>>>>> for improved readability of the code.
>>>>>>
>>>>>> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>>>>>> ---
>>>>>>     .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
>>>>>>     1 file changed, 4 insertions(+), 8 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>>>> b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>>>> index 7db83cf5e4aa..a3b1be623861 100644
>>>>>> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>>>> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
>>>>>> @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
>>>>>>     	const struct ni_route_tables *T = &private.routing_tables;
>>>>>>       	init_pci_fake();
>>>>>> -	unittest(!route_register_is_valid(4, O(4), T),
>>>>>> -		 "check for bad source 4-->4\n");
>>>>>> -	unittest(!route_register_is_valid(0, O(1), T),
>>>>>> -		 "find first source\n");
>>>>>> -	unittest(!route_register_is_valid(4, O(6), T),
>>>>>> -		 "find middle source\n");
>>>>>> -	unittest(!route_register_is_valid(9, O(8), T),
>>>>>> -		 "find last source");
>>>>>> +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
>>>>>> 4-->4\n");
>>>>>> +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
>>>>>> +	unittest(!route_register_is_valid(4, O(6), T), "find middle
>>>>>> source\n");
>>>>>> +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
>>>>>>     }
>>>>>>       void test_ni_check_trigger_arg(void)
>>>>>>
>>>>>
>>>>> Is it worth breaking the 80-column limit for this?
>>>>
>>>> Deepak,
>>>>
>>>> It was much nicer before.
>>>>
>>>> It can be awkward to break eg a + operation at the 80 character limit.
>>>> But function argument stand by themselves.
>>>>
>>>> julia
>>>>
>>>
>>> Hi Julia and Ian,
>>> I wanted to take advantage of the relaxation of 80 column limit to 100
>>> columns and hence proposed combining the lines. Are you saying this is
>>> allowed only in certain cases?
>>>
>>> Please confirm and I will handle it accordingly.
>>
>> Hi Deepak,
>>
>> 80 columns is still the preferred limit.  I think the relaxation is mostly
>> to avoid the need to split sub-expressions across lines in really ugly ways
>> to keep within the 80 columns at the expense of readability.
>>
> 
> Thank you Ian. That sounds good. I will just send the corrected patch 1
> and will scrap patch 2.
> 
> Can I just send a standalone patch as v2 instead of a patch set of
> single patch?

That should be fine, but in the notes for "v2" after  the "---" line for 
the now standalone patch, you could mention that patch 2/2 of the series 
has been dropped.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
