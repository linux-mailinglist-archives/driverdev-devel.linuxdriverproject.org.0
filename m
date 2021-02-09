Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52203314F5B
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 13:45:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70B75873B7;
	Tue,  9 Feb 2021 12:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBdxtMDVaJXA; Tue,  9 Feb 2021 12:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78B1987358;
	Tue,  9 Feb 2021 12:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 942AD1BF232
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8330E6F573
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BlRalxg4o1tf for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 12:45:44 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id ADFDE6F5A7; Tue,  9 Feb 2021 12:45:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AE606F55D
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 12:45:43 +0000 (UTC)
Received: from [IPv6:2003:c7:cf1c:ce00:59a:7e98:1669:ccc]
 (p200300c7cf1cce00059a7e9816690ccc.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:ce00:59a:7e98:1669:ccc])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 076FA1F44DA5;
 Tue,  9 Feb 2021 12:45:40 +0000 (GMT)
Subject: Re: [PATCH AUTOSEL 5.10 14/36] media: rkisp1: uapi: change hist_bins
 array type from __u16 to __u32
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Sasha Levin <sashal@kernel.org>, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20210208175806.2091668-1-sashal@kernel.org>
 <20210208175806.2091668-14-sashal@kernel.org>
 <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <e086d0f4-c5f0-e38c-8937-593852ac0b50@collabora.com>
Date: Tue, 9 Feb 2021 13:45:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <12c8f50e-3bba-5936-6e67-55bd928a75c7@xs4all.nl>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, Helen Koike <helen.koike@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Am 08.02.21 um 21:46 schrieb Hans Verkuil:
> On 08/02/2021 18:57, Sasha Levin wrote:
>> From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>
>> [ Upstream commit 31f190e0ccac8b75d33fdc95a797c526cf9b149e ]
>>
>> Each entry in the array is a 20 bits value composed of 16 bits unsigned
>> integer and 4 bits fractional part. So the type should change to __u32.
>> In addition add a documentation of how the measurements are done.
> 
> Dafna, Helen, does it make sense at all to backport these three patches to
> when rkisp1 was a staging driver?
> 
> I would be inclined not to backport this.

I also don't think it makes sense since this changes the uapi and it is not really a bug fix.


Thanks,
Dafna

> 
> Regards,
> 
> 	Hans
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
>> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>   drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
>> index 432cb6be55b47..c19fe059c2442 100644
>> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
>> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
>> @@ -848,13 +848,18 @@ struct rkisp1_cif_isp_af_stat {
>>   /**
>>    * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>>    *
>> - * @hist_bins: measured bin counters
>> + * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point
>> + *	       type. Bits 0-4 are the fractional part and bits 5-19 are the
>> + *	       integer part.
>>    *
>> - * Measurement window divided into 25 sub-windows, set
>> - * with ISP_HIST_XXX
>> + * The window of the measurements area is divided to 5x5 sub-windows. The
>> + * histogram is then computed for each sub-window independently and the final
>> + * result is a weighted average of the histogram measurements on all
>> + * sub-windows. The window of the measurements area and the weight of each
>> + * sub-window are configurable using struct @rkisp1_cif_isp_hst_config.
>>    */
>>   struct rkisp1_cif_isp_hist_stat {
>> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>>   };
>>   
>>   /**
>>
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
