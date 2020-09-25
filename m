Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 638E0278A72
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 16:09:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09DC586DCC;
	Fri, 25 Sep 2020 14:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IN-Bs+-rSxLG; Fri, 25 Sep 2020 14:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93E8C86DC1;
	Fri, 25 Sep 2020 14:09:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E42C1BF304
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A7C6872E7
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9jqDT-6Myz5 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 14:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5381B87265
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 14:09:41 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x16so1896613pgj.3
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 07:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0g8As1BPIW+mxp09I9Q/3/lncjQOHPnfpBrzGk+edKs=;
 b=UWcWtzyKjvHUBFmX+yhHW/yzowiin/IE5KGdd9A9mJKNGdDMQPVpfZWbIJit7hr4Ii
 LSsbh0EJRpzbmjqDq2U2BXsUs9RnW8JGWTXlB2mk3MRInsiepQ1z7o4/IDVMTiratAsU
 weSnab8KXLNz/OXx2tBkWtU754BxNmim+LlybEjrGoMoBc8ct2yLIxjo407rNnWuFYX1
 yWYvYx2Kar/duQcN3ybLb3t2rX7k/S180EdAJUaThcxxAKOJQ4Lcvd6wcCRcO/vv3FYG
 SkVSSJ60+mhJ+Xxx8z80GM3bxdd2DPud8gb0iJsdclNPi99jA9WyLHuEBY4xRkQVoVDJ
 pCdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0g8As1BPIW+mxp09I9Q/3/lncjQOHPnfpBrzGk+edKs=;
 b=t94sG87HP5jjrKDRwjO0Cclp6tPcNm4NC1Eti8ajNDwyviiVYcoqDLxmiqyVFcfFdy
 BQudxhK0QhnVT8TwhuUxRdUwATNxdUjygGIP/gH5N01w76XDueTGRA8x8W05yyY6jYhA
 QmHukbTEHJySLQxtop9GV0E86m0iFuk/2pww7ye9LQdl007NWsVERrRrb+aI1z4xwV9q
 1wfTYOtoFJmXSuCgLRBchx+mlXRRFUtvZF8jcAl9lHzeqi8PwjSxLIGDM1t05DJnCRtY
 xV6L2xPyWD31Qx4+gr6jrwiy52afDWftoJmMmn7RCWHcUqmvAVdtL5L+LGk2eUtlF+Qp
 b71g==
X-Gm-Message-State: AOAM531gnw/vPE9XGRoMmuQKZBDVA1d2qfdVEYW5L8fINHgo1Xj3VRK0
 QCp95VZEoxYIc+RQGYbSCo8=
X-Google-Smtp-Source: ABdhPJwk68+UWFlYWcCpKkQ8+c+rYqCmlV6pLOaXJQRxXzB9Dulo4yoG8/DhVauFLxz7iyIvFrtHdw==
X-Received: by 2002:a63:c74a:: with SMTP id v10mr207846pgg.240.1601042980847; 
 Fri, 25 Sep 2020 07:09:40 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a13sm2416696pgq.41.2020.09.25.07.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 07:09:40 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 25 Sep 2020 22:09:30 +0800
To: Alex Elder <elder@linaro.org>
Subject: Re: [greybus-dev] [PATCH 1/3] [PATCH] staging: greybus: fix warnings
 about endianness detected by sparse
Message-ID: <20200925140930.z6yvqvm6crrq5k3a@Rk>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <3fda9226-6f6f-6c5f-aa02-c9047a3d2dce@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fda9226-6f6f-6c5f-aa02-c9047a3d2dce@linaro.org>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Johan Hovold <johan@kernel.org>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 07:50:57AM -0500, Alex Elder wrote:
>On 9/24/20 5:20 AM, Coiby Xu wrote:
>> This patch fix the following warnings from sparse,
>
>You need to address Greg's comment.
>
>But in general this looks good.  I have one comment below, which
>you can address in v2.  If you (or others) disagree with it, I'm
>fine with your code as-is.  Either way, you can add this:
>
>Reviewed-by: Alex Elder <elder@linaro.org>

Thank you fore reviewing this patch!

>
>> $ make C=2 drivers/staging/greybus/
>> drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
>> drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
>> drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
>> drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
>
>. . .
>
>> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
>> index 83b38ae8908c..56bf1a4f95ad 100644
>> --- a/drivers/staging/greybus/audio_topology.c
>> +++ b/drivers/staging/greybus/audio_topology.c
>> @@ -466,7 +466,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>>  		goto exit;
>>
>>  	/* update ucontrol */
>> -	if (gbvalue.value.integer_value[0] != val) {
>> +	if (gbvalue.value.integer_value[0] != cpu_to_le32(val)) {
>
>It's equivalent, but I have a small preference to convert
>the value from gbvalue into CPU byte order rather than
>what you have here.

Thank you for the suggestion! I'll use CPU byte order when submitting
next version.
>
>>  		for (wi = 0; wi < wlist->num_widgets; wi++) {
>>  			widget = wlist->widgets[wi];
>>  			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
>> @@ -689,7 +689,7 @@ static int gbaudio_tplg_create_kcontrol(struct gbaudio_module_info *gb,
>>  				return -ENOMEM;
>>  			ctldata->ctl_id = ctl->id;
>>  			ctldata->data_cport = le16_to_cpu(ctl->data_cport);
>> -			ctldata->access = ctl->access;
>> +			ctldata->access = le32_to_cpu(ctl->access);
>>  			ctldata->vcount = ctl->count_values;
>>  			ctldata->info = &ctl->info;
>>  			*kctl = (struct snd_kcontrol_new)
>> @@ -744,10 +744,10 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
>>  		return ret;
>>  	}
>>
>> -	ucontrol->value.enumerated.item[0] = gbvalue.value.enumerated_item[0];
>> +	ucontrol->value.enumerated.item[0] = le32_to_cpu(gbvalue.value.enumerated_item[0]);
>>  	if (e->shift_l != e->shift_r)
>>  		ucontrol->value.enumerated.item[1] =
>> -			gbvalue.value.enumerated_item[1];
>> +			le32_to_cpu(gbvalue.value.enumerated_item[1]);
>>
>>  	return 0;
>>  }
>> @@ -801,10 +801,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>>  	mask = e->mask << e->shift_l;
>>
>>  	if (gbvalue.value.enumerated_item[0] !=
>> -	    ucontrol->value.enumerated.item[0]) {
>> +	    cpu_to_le32(ucontrol->value.enumerated.item[0])) {
>>  		change = 1;
>>  		gbvalue.value.enumerated_item[0] =
>> -			ucontrol->value.enumerated.item[0];
>> +			cpu_to_le32(ucontrol->value.enumerated.item[0]);
>>  	}
>>
>>  	if (e->shift_l != e->shift_r) {
>> @@ -813,10 +813,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>>  		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
>>  		mask |= e->mask << e->shift_r;
>>  		if (gbvalue.value.enumerated_item[1] !=
>> -		    ucontrol->value.enumerated.item[1]) {
>> +		    cpu_to_le32(ucontrol->value.enumerated.item[1])) {
>>  			change = 1;
>>  			gbvalue.value.enumerated_item[1] =
>> -				ucontrol->value.enumerated.item[1];
>> +				cpu_to_le32(ucontrol->value.enumerated.item[1]);
>>  		}
>>  	}
>>
>> @@ -887,7 +887,7 @@ static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
>>  		return -ENOMEM;
>>  	ctldata->ctl_id = ctl->id;
>>  	ctldata->data_cport = le16_to_cpu(ctl->data_cport);
>> -	ctldata->access = ctl->access;
>> +	ctldata->access = le32_to_cpu(ctl->access);
>>  	ctldata->vcount = ctl->count_values;
>>  	ctldata->info = &ctl->info;
>>  	*kctl = (struct snd_kcontrol_new)
>>
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
