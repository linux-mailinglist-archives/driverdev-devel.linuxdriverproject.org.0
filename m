Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFAF152151
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 20:50:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47748853FC;
	Tue,  4 Feb 2020 19:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uo7oxKl4CHmK; Tue,  4 Feb 2020 19:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE7AF84D16;
	Tue,  4 Feb 2020 19:50:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB2FD1BF4E6
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 19:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C636384A6C
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 19:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0y_mxvTNPclW for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 19:50:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2118F845D4
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 19:50:22 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t14so5171069wmi.5
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 11:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6JA04gqzlOK99JzNgksNDLxM2+WYOhuyFwCSsasycRg=;
 b=svr43D9oXlyyOIc1IEDxyoBcS1ckQD2MSjULN9afs/CR92O1AxhxHS6YYa+mcweg2D
 rvjo3MdHgtFmnIqdcVfUkfshZ06AEgtKXkHNot+8B3EgU0IkyNHFDusl3wo6cAvtWG3/
 EnMHUlT+1LlbpZDagVI/bBQ6pR8vEc3T4U8KUOk1n4FOUsv2wcium+EjAPGQdNIEACik
 H12R72t/fg7EYdp0H07wwnficfQAE/LQYUp2ixTmO0KPrMDxMzrUlNCF01rp0L8LYNg1
 5ndSG2SJROXpGZCKBUktYuPDhywOdVLKBv4e4VvsfUJ+j+QRn1UrEBmnTHhFit2sO3Cp
 Ffbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6JA04gqzlOK99JzNgksNDLxM2+WYOhuyFwCSsasycRg=;
 b=A4qo9Vif/gzH54P7psiR3G8zAmrClxSUAqSrgmBltFkxI1fXR1qmRglCVBlL9uiNhi
 ACeLO0BmMJcjMs+7uL213YItexY3W7BN3Fh7nCEaaL2cja4L4SfJpcPzabchSuQi0oDH
 QcFM3yX3oQaEQmsGf2zTGhQdF69VhhWp99UJIHmX9TwrnURxLGZOmEM/GqT1Gux5K3Cd
 k2THhnsF84ioVK0DY8su8Xpcn+gE1n9I/isi+IF8t0CtG/1+vm6AJ0SQhvOzGodfDCaJ
 JnLxHZYytG2CtKxRFRXOxU6L83eg9qTOTOGFH9wwLreFwIJXm2K8CwISI4c3fdgVp9xF
 e3qg==
X-Gm-Message-State: APjAAAWgceMR/8zTvXLw9PgEg0I9Bl3FQ6QvIvhhppu0PJqdiTMwKVVp
 14jLruIzhMFeb1GysDpN2sU=
X-Google-Smtp-Source: APXvYqwKbFfmT9e8QUuEJbPDXkDZUrgCNLUfhhixl/gZ/lpjtiWmeDbRp222FaX0HbgtVzL+K9rciw==
X-Received: by 2002:a1c:ac46:: with SMTP id v67mr579407wme.153.1580845820398; 
 Tue, 04 Feb 2020 11:50:20 -0800 (PST)
Received: from [192.168.43.57] (94.197.120.219.threembb.co.uk.
 [94.197.120.219])
 by smtp.gmail.com with ESMTPSA id o4sm16140290wrw.15.2020.02.04.11.50.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 11:50:20 -0800 (PST)
Subject: Re: [PATCH 1/2] staging: vt6656: fix sign of rx_dbm to bb_pre_ed_rssi.
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <9b3b92d6-3672-00be-d0b5-ccd222236ba9@gmail.com>
 <20200203094222.GM1778@kadam>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <bd20e945-f393-1080-502a-4a92d621cea3@gmail.com>
Date: Tue, 4 Feb 2020 19:50:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200203094222.GM1778@kadam>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/02/2020 09:42, Dan Carpenter wrote:
> On Sun, Feb 02, 2020 at 12:27:25PM +0000, Malcolm Priestley wrote:
>> bb_pre_ed_rssi is an u8 rx_dm always returns negative signed
>> values add minus operator to always yield positive.
>>
>> fixes issue where rx sensitivity is always set to maximum because
>> the unsigned numbers were always greater then 100.
>>
>> Cc: stable <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
>> ---
...

>>  drivers/staging/vt6656/dpc.c | 2 +-
> 
> It appears that the vt6655 driver has the same issue.

In the vt6655 it is not used.

Regards


Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
