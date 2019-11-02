Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC17ECEC1
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Nov 2019 13:51:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB0398AED5;
	Sat,  2 Nov 2019 12:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zvqStaLcbvD; Sat,  2 Nov 2019 12:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1ACF38AEAC;
	Sat,  2 Nov 2019 12:51:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D66A21BF95D
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 12:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD3368A8C2
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 12:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IZnAETSEHmr4 for <devel@linuxdriverproject.org>;
 Sat,  2 Nov 2019 12:50:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx01-fr.bfs.de (mx01-fr.bfs.de [193.174.231.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFC7D8A93E
 for <devel@driverdev.osuosl.org>; Sat,  2 Nov 2019 12:50:33 +0000 (UTC)
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
 by mx01-fr.bfs.de (Postfix) with ESMTPS id 5196E2032C;
 Sat,  2 Nov 2019 13:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1572699026;
 h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jhsq0f+0IGVdmRRN9jG7Dm7XwzD7Cg/oOMoZQzdz9C0=;
 b=JvlSafB1Nc+bbFzC6Um8392e86DH9aqG/8rdtcNC547Muc3MrLFBmeaZ9hFI/FoYeGcT5K
 6Pn7XvIFVRlxkVBHL+jIksDD2/1AHC6nj2KWTut/6BA1Rsh9r8BKG79YO/NjS7utAJz2Zy
 1CJ0BQ4nwxvOinPs1h1ZqiE3cshDmQ2b1rJHa3LYzPWRcS1oeGyuVOLgoTaG8ptuKJ+kBr
 2paBJ0WFevftnAZol04Eh29P8OmIc+FYhvDpNzQAkmg6e/OQ3xUbTSjNSlyLAPY61shAKt
 bSd9nGxqHM7HVQk47Q8+935AM2Mcg6rKRzMDGTemPcjMFtB6EutFrD2UE0bjQg==
Received: from [134.92.181.33] (unknown [134.92.181.33])
 by mail-fr.bfs.de (Postfix) with ESMTPS id BC30ABEEBD;
 Sat,  2 Nov 2019 13:50:25 +0100 (CET)
Message-ID: <5DBD7B91.8040309@bfs.de>
Date: Sat, 02 Nov 2019 13:50:25 +0100
From: walter harms <wharms@bfs.de>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de;
 rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8192u: fix potential infinite loop because
 loop counter being too small
References: <20191101142604.17610-1-colin.king@canonical.com>
 <20191101145117.GB10409@kadam>
In-Reply-To: <20191101145117.GB10409@kadam>
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00];
 HAS_REPLYTO(0.00)[wharms@bfs.de]; TO_DN_SOME(0.00)[];
 REPLYTO_ADDR_EQ_FROM(0.00)[]; RCPT_COUNT_SEVEN(0.00)[7];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; BAYES_HAM(-3.00)[100.00%];
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; NEURAL_HAM(-0.00)[-0.999,0];
 RCVD_COUNT_TWO(0.00)[2]; RCVD_TLS_ALL(0.00)[]
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
Reply-To: wharms@bfs.de
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Colin King <colin.king@canonical.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Am 01.11.2019 15:51, schrieb Dan Carpenter:
> On Fri, Nov 01, 2019 at 02:26:04PM +0000, Colin King wrote:
>> From: Colin Ian King <colin.king@canonical.com>
>>
>> Currently the for-loop counter i is a u8 however it is being checked
>> against a maximum value priv->ieee80211->LinkDetectInfo.SlotNum which is a
>> u16. Hence there is a potential wrap-around of counter i back to zero if
>> priv->ieee80211->LinkDetectInfo.SlotNum is greater than 255.  Fix this by
>> making i a u16.
>>
>> Addresses-Coverity: ("Infinite loop")
>> Fixes: 8fc8598e61f6 ("Staging: Added Realtek rtl8192u driver to staging")
>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
>> index 48f1591ed5b4..fd91b7c5ca81 100644
>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> @@ -3210,7 +3210,7 @@ static void rtl819x_update_rxcounts(struct r8192_priv *priv, u32 *TotalRxBcnNum,
>>  			     u32 *TotalRxDataNum)
>>  {
>>  	u16			SlotIndex;
>> -	u8			i;
>> +	u16			i;
> 
> The iterator "i" should just be an int unless we know that it needs to
> be an unsigned long long.
> 

+1

i think we can spare the 2byte. ppl expect int and will get confused (as shown here).

re,
 wh


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
