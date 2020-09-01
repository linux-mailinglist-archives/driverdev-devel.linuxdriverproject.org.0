Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB13B25A001
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 22:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA5BC2740C;
	Tue,  1 Sep 2020 20:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YaRpwkWpg7pv; Tue,  1 Sep 2020 20:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6FEA220467;
	Tue,  1 Sep 2020 20:31:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 353E51BF384
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 20:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D3478672B
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 20:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrMiJS6tZRuj for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 20:31:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 34F0186722
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 20:31:41 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 4693 invoked from network);
 1 Sep 2020 22:31:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1598992298; bh=8yqYvUMKqSXk/Clt3FRpjdGUhFpqCSV3vm/nqSmI+Xs=;
 h=Subject:To:From:Cc;
 b=fqhlyouj79/pAIYv7HLX7zrxmo9deFClN1Jp4M+0doIQoSuFEKr5UVitfOKUJSclt
 WHRwjK1q933XXxeD0SQCINErmXVLbx3Dz8c5PZLm1swF46HRcoNmxkKMZIo9ADBMEQ
 ydwOXd99/k0QUkUbaVkyHii2PrH81z6Iu5yof3jI=
Received: from 188.146.102.178.nat.umts.dynamic.t-mobile.pl (HELO
 [192.168.1.110]) (antoni.przybylik@wp.pl@[188.146.102.178])
 (envelope-sender <antoni.przybylik@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <devel@driverdev.osuosl.org>; 1 Sep 2020 22:31:38 +0200
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: replaced macro with a function
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200901161846.111486-1-antoni.przybylik@wp.pl>
 <20200901175024.GA1509755@kroah.com>
From: "antoni.przybylik@wp.pl" <antoni.przybylik@wp.pl>
Message-ID: <4cf3447d-0dfa-8072-d168-698400d177c7@wp.pl>
Date: Tue, 1 Sep 2020 22:31:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200901175024.GA1509755@kroah.com>
Content-Language: en-US
X-WP-MailID: ea52d949d95c05dd253d4b49b44ccb41
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000B [gYNU]                               
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01.09.2020 19:50, Greg KH wrote:

> On Tue, Sep 01, 2020 at 06:18:46PM +0200, Antoni Przybylik wrote:
>> This approach is more elegant and prevents some problems related to
>> macros such as operator precedence in expanded expression.
>>
>> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
>> ---
>>   drivers/staging/gdm724x/gdm_tty.c | 15 +++++++++------
>>   1 file changed, 9 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
>> index 6e813693a766..a7db0672e81d 100644
>> --- a/drivers/staging/gdm724x/gdm_tty.c
>> +++ b/drivers/staging/gdm724x/gdm_tty.c
>> @@ -27,8 +27,6 @@
>>   
>>   #define MUX_TX_MAX_SIZE 2048
>>   
>> -#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
>> -
>>   static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
>>   static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
>>   static DEFINE_MUTEX(gdm_table_lock);
>> @@ -36,6 +34,11 @@ static DEFINE_MUTEX(gdm_table_lock);
>>   static const char *DRIVER_STRING[TTY_MAX_COUNT] = {"GCTATC", "GCTDM"};
>>   static char *DEVICE_STRING[TTY_MAX_COUNT] = {"GCT-ATC", "GCT-DM"};
>>   
>> +static int gdm_tty_ready(gdm *gdm)
>> +{
>> +	return (gdm && gdm->tty_dev && gdm->port.count);
>> +}
> You obviously did not even build this patch, which is a bit rude, don't
> you think?
>
> :(

I'm stupid. I misconfigured the kernel. I fixed this bug and sent a new 
patch.
Linux configuration script is horrible...

Antoni Przybylik

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
