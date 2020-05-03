Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C61C2ADD
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 11:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83325881A6;
	Sun,  3 May 2020 09:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-TDTYkQiIpB; Sun,  3 May 2020 09:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EAE288241;
	Sun,  3 May 2020 09:15:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BECFE1BF5A5
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 09:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB1E988195
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 09:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4deOnBWOoxfQ for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 09:15:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33BE58816C
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 09:15:19 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 34D1518CB; Sun,  3 May 2020 11:15:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 34D1518CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588497313;
 bh=yfcoX/+hpJsCO5PGGQP4+W0+BM8RubmIhakYFRtOT9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rSr4Yf2mT8SIa81KMwMR4sbV4w9ZAZZna6/qoJXBdc/YITI40wMN0f96Vl1ONQCwK
 L00kbcSzRZLfEiVL1lr+fGFX8aBGSu8CZkh91mBv9xfUTdm1YQYxqN8X5uAQL1TCDY
 kJW+RIK5UJtJpZUTFtYju+nCA+WJjVd/iNFZuBRU=
Date: Sun, 3 May 2020 11:15:13 +0200
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 2/2] staging: vt6655: fix LONG_LINE warning
Message-ID: <20200503091513.GA8308@new.kocurkovo.cz>
Mail-Followup-To: Joe Perches <joe@perches.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>,
 Briana Oursler <briana.oursler@gmail.com>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
References: <1588457794-31438-1-git-send-email-mdujava@kocurkovo.cz>
 <1588457794-31438-2-git-send-email-mdujava@kocurkovo.cz>
 <e5166009d549f42b75e8d764bc9078538ce0ce4a.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5166009d549f42b75e8d764bc9078538ce0ce4a.camel@perches.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
 linux-kernel@vger.kernel.org, Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Briana Oursler <briana.oursler@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 02, 2020 at 10:11:43PM -0700, Joe Perches wrote:
>On Sun, 2020-05-03 at 00:16 +0200, Matej Dujava wrote:
>> This patch will fix LONG_LINE error from checkpatch, by createing temporary
>> variable so call to the function is not in if/else block.
>[]
>> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>[]

Sorry, am I missing something here?

>> @@ -164,16 +164,24 @@ s_uGetTxRsvTime(
>>  )
>>  {
>>  	unsigned int uDataTime, uAckTime;
>> +	unsigned short basic_rate;
>>
>>  	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
>>
>>  	if (!bNeedAck)
>>  		return uDataTime;
>>
>> -	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
>> -		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
>> -	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
>> -		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
>> +	/*
>> +	 * CCK mode  - 11b
>> +	 * OFDM mode - 11g 2.4G & 11a 5G
>> +	 */
>> +	if (byPktType == PK_TYPE_11B)
>> +		basic_rate = (unsigned short)pDevice->byTopCCKBasicRate;
>> +	else
>> +		basic_rate = (unsigned short)pDevice->byTopOFDMBasicRate;
>> +
>> +	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
>> +				     basic_rate);
>>
>>  	return uDataTime + pDevice->uSIFS + uAckTime;
>>  }
>
>perhaps simpler using a ?:
>
>	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
>				     byPktType == PK_TYPE_11B
>				     ? pDevice->byTopCCKBasicRate
>				     : pDevice->byTopOFDMBasicRate);
>
>the casts aren't necessary either as both by... fields are u8

Thank you, will resend my patch.

>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
