Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BB949619
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 01:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E6468619A;
	Mon, 17 Jun 2019 23:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rN2WPDZeUonc; Mon, 17 Jun 2019 23:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C047B85C9A;
	Mon, 17 Jun 2019 23:52:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DADC91BF391
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 23:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D71D885C9A
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 23:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSmxgP4iX6Jf for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 23:52:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3190085C92
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 23:52:29 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f25so6611259pgv.10
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 16:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rT1Ry9CXDU/Gof/gNESKymfMi9a8wIc43QBygQM/oWk=;
 b=JobSvjLQQSytmm5X6e2nFCkNsOurMp/xquWXWSBi2JX6cWn0oA4/QDmYIgdAhAdllY
 H3frTrIDMxXUBxKNBiCTeDqFef4TDRqBHviUic4a8WOqnmSdVJrlY/GNNSQVUpmsFDRg
 Ayp6tBTwMKEA+T6O3F6FdOglQZqmSg0U7gru1Fi0Dr1u0riQ/7Eb2ZJpx/QXdVo/e5hZ
 Dz3spJOt8KuatyP95PXr6jeqR4ws81CDJ4/S3dHsNA+AVP4I1C5wIBLW8Rbn0uWtB2wI
 l0hgWZhLPC4Z26TsdUw6kKr+/Y76C4tAV6rekh+cI5sKzEYjcVRQIfR7/yOIqu5qe1/1
 Y9Tw==
X-Gm-Message-State: APjAAAUCEQnVaFudCvEZL2PY6HqzCOYMREw/fAtVwq3GcOkWLmKAY3z4
 EhQvYuymEqVyiprMOKRQ/EM=
X-Google-Smtp-Source: APXvYqznUwe7i1jFQEHoTI8nFDF4yUuM+GrXTOznm/OWpDdnoDTWVknSAtGeEiPT6OHomWHWWX0woA==
X-Received: by 2002:a17:90a:2ec2:: with SMTP id
 h2mr1867192pjs.119.1560815548541; 
 Mon, 17 Jun 2019 16:52:28 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id l20sm11750101pff.102.2019.06.17.16.52.26
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 16:52:27 -0700 (PDT)
Subject: Re: [PATCH V4 00/16] use sg helper to operate scatterlist
To: Ming Lei <ming.lei@redhat.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
References: <20190617030349.26415-1-ming.lei@redhat.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <25be959c-82fc-996e-76ed-c1fe7b4dce5d@acm.org>
Date: Mon, 17 Jun 2019 16:52:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617030349.26415-1-ming.lei@redhat.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/16/19 8:03 PM, Ming Lei wrote:
> Scsi MQ makes a large static allocation for the first scatter gather
> list chunk for the driver to use.  This is a performance headache we'd
> like to fix by reducing the size of the allocation to a 2 element
> array.  Doing this will break the current guarantee that any driver
> using SG_ALL doesn't need to use the scatterlist iterators and can get
> away with directly dereferencing the array.  Thus we need to update all
> drivers to use the scatterlist iterators and remove direct indexing of
> the scatterlist array before reducing the initial scatterlist
> allocation size in SCSI.

For all patches in this series except 9/16 and 11/16, please add the 
following:

Reviewed-by: Bart Van Assche <bvanassche@acm.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
