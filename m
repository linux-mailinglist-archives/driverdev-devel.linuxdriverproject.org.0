Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEF04C1A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 21:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C958E2107F;
	Wed, 19 Jun 2019 19:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pkzvMYzg7SjU; Wed, 19 Jun 2019 19:43:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5DA42204E3;
	Wed, 19 Jun 2019 19:43:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7113A1BF4E2
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 19:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2768781E39
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 19:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OHhVXh58x2mk for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 19:43:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B80781EAD
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 19:43:50 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f21so234136pgi.3
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 12:43:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vkDuWR4Ufpj0xciDQcbKjPFVsG7k2MUKXN7wSLo/irQ=;
 b=emKQBXR/DYoUq/K+ZAcFBsPE7UQ/c1071JNWIx39Py0u8nVeRe8+2Heou36hv98ZR4
 kBPPKxapHbwnmt2ThFvjIwSwdwXv189PrTc6t9yBaJG9mc/TZJvULwsgJFhjgc7aW6Kz
 qvgM19Q1T7WIJclgZkTq+dw06Njd4Ebsoodt3yZPFdwbmEAyRlTqrL+OZliE5/Fxq0TJ
 mGnkLKVe4zAR5gpbzAGJXl1hB6eWSlUkLvVNkShQFWUxrsOw8HHUeKsp66XnzRGISH+9
 CBsWCP9wqpIHVTBZvViG9fOh2/q6zI+KqDiHe3iMeXqEbcxwPZGO2wuKB/BvnF4nugM1
 1+OA==
X-Gm-Message-State: APjAAAVpBPfkxPqSvxakvYIqIwXMxDWgl/B2HQTN1blFC+5k7l/RGWlk
 uypY8N1nr5CroGOJ7mLk8Mg=
X-Google-Smtp-Source: APXvYqzu0qVkLU1Bjj2t90oYtlQ8S7ihvZbF2diaNzgHmiBEJPWw0dSSJHUCdg1/QQ9BlByLhmOSHQ==
X-Received: by 2002:a63:5a02:: with SMTP id o2mr8900735pgb.93.1560973429816;
 Wed, 19 Jun 2019 12:43:49 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id r4sm2325798pjd.28.2019.06.19.12.43.48
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:43:48 -0700 (PDT)
Subject: Re: [PATCH V5 00/16] use sg helper to operate scatterlist
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
 Ming Lei <ming.lei@redhat.com>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <yq11rzqzacx.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <3df71d64-78fb-c6fc-f456-a0b626abff3b@acm.org>
Date: Wed, 19 Jun 2019 12:43:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq11rzqzacx.fsf@oracle.com>
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 linux-scsi@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/18/19 5:29 PM, Martin K. Petersen wrote:
> I applied this series with a bunch of edits and clarifying comments. It
> was quite the nightmare to rebase 5.3/scsi-queue to satisfy the ordering
> requirements, locate the scattered fixes, tweak tags, etc. Hope I got
> everything right.

Hi Martin,

Do you perhaps plan to push out these patches at a later time? It seems 
like that branch has not been updated recently:

$ git show --format=fuller mkp-scsi/5.3/scsi-queue | head -n7
commit f3e88ad00f58e9a05986be3028b2ed8654c601c9
Author:     Suganath Prabu S <suganath-prabu.subramani@broadcom.com>
AuthorDate: Fri May 31 08:14:43 2019 -0400
Commit:     Martin K. Petersen <martin.petersen@oracle.com>
CommitDate: Fri Jun 7 10:17:06 2019 -0400

     scsi: mpt3sas: Update driver version to 29.100.00.00

Thanks,

Bart.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
