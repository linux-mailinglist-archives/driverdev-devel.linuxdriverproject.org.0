Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF8A5504E
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 15:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11E6F87A72;
	Tue, 25 Jun 2019 13:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKLuT8c8D24l; Tue, 25 Jun 2019 13:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3180487A43;
	Tue, 25 Jun 2019 13:26:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 879291BF417
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 826A4864B2
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjMlicyLyAPO for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 13:26:51 +0000 (UTC)
X-Greylist: delayed 00:05:07 by SQLgrey-1.7.6
Received: from smtp123.iad3a.emailsrvr.com (smtp123.iad3a.emailsrvr.com
 [173.203.187.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C186E84332
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 13:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1561468903;
 bh=e03UopFZ/Dhfd62ps66uuvcgridhOzozY2ozKla/GZo=;
 h=Subject:To:From:Date:From;
 b=H+A95YXq+e5v9lSt/sl0BYpdsylBM1bpU6TRYm4Deu4NPxbhUFE7IL2aAQOWhhVgd
 u5MNbzJiN02V8sMiH9w0y8B1vTaX9V8QryJunoeTHTtNMjMMAVk92Aw5SNEZ4imX7f
 XPABbIdianzfh95IMGArmvZT4Yjs+1qWTrLxeHHI=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp8.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id E10A351A5; 
 Tue, 25 Jun 2019 09:21:42 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.62] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 25 Jun 2019 09:21:43 -0400
Subject: Re: [PATCH] staging: comedi: use dma_mmap_coherent for DMA-able
 buffer mmap
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190625112659.13016-1-abbotti@mev.co.uk>
 <20190625114700.GZ28859@kadam>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <a68e3315-87ac-f201-2b33-6c1acd9777ff@mev.co.uk>
Date: Tue, 25 Jun 2019 14:21:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625114700.GZ28859@kadam>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/06/2019 12:47, Dan Carpenter wrote:
> On Tue, Jun 25, 2019 at 12:26:59PM +0100, Ian Abbott wrote:
>>   drivers/staging/comedi/comedi_buf.c  | 150 ++++++++++++++++++---------
>>   drivers/staging/comedi/comedi_fops.c |  39 ++++---
>>   2 files changed, 125 insertions(+), 64 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
>> index d2c8cc72a99d..3ef3ddabf139 100644
>> --- a/drivers/staging/comedi/comedi_buf.c
>> +++ b/drivers/staging/comedi/comedi_buf.c
>> @@ -27,18 +27,19 @@ static void comedi_buf_map_kref_release(struct kref *kref)
>>   	unsigned int i;
>>   
>>   	if (bm->page_list) {
>> -		for (i = 0; i < bm->n_pages; i++) {
>> -			buf = &bm->page_list[i];
>> -			clear_bit(PG_reserved,
>> -				  &(virt_to_page(buf->virt_addr)->flags));
>> -			if (bm->dma_dir != DMA_NONE) {
>> -#ifdef CONFIG_HAS_DMA
>> -				dma_free_coherent(bm->dma_hw_dev,
>> -						  PAGE_SIZE,
>> -						  buf->virt_addr,
>> -						  buf->dma_addr);
>> -#endif
>> -			} else {
>> +		if (bm->dma_dir != DMA_NONE) {
>> +			/*
>> +			 * DMA buffer was allocated as a single block.
>> +			 * Address is in page_list[0].
>> +			 */
>> +			buf = &bm->page_list[0];
>> +			dma_free_coherent(bm->dma_hw_dev,
>> +					  PAGE_SIZE * bm->n_pages,
>> +					  buf->virt_addr, buf->dma_addr);
>> +		} else {
>> +			for (i = 0; i < bm->n_pages; i++) {
>> +				buf = &bm->page_list[i];
>> +				ClearPageReserved(virt_to_page(buf->virt_addr));
> 
> I think we need a NULL check here:
> 
> 	if (!buf->virt_addr)
> 		continue;
> 
>>   				free_page((unsigned long)buf->virt_addr);
>>   			}
>>   		}

Hi Dan, I don't think that is strictly required because bm->n_pages gets 
set to the number of successfully allocated pages (not the number of 
required pages) by comedi_buf_map_alloc():

 > +		for (i = 0; i < n_pages; i++) {
 > +			buf = &bm->page_list[i];
 > +			buf->virt_addr = (void *)get_zeroed_page(GFP_KERNEL);
 > +			if (!buf->virt_addr)
 > +				break;
 > +
 > +			SetPageReserved(virt_to_page(buf->virt_addr));
 > +		}
 > +
 > +		bm->n_pages = i;

Here!           ^

 > +		if (i < n_pages)
 > +			goto err;

 > +err:
 > +	comedi_buf_map_put(bm);
 > +	return NULL;



-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
