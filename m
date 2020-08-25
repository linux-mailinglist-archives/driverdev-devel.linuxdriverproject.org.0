Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782042523B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 00:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67E5A880F9;
	Tue, 25 Aug 2020 22:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D-52nHmWpKGX; Tue, 25 Aug 2020 22:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF06987F81;
	Tue, 25 Aug 2020 22:37:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EA5D1BF2B5
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 22:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B60586569
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 22:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLxFTeDJwkRN for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 22:37:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1616B86566
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 22:37:09 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id z18so230073pjr.2
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 15:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h8BiWXKFvIak7oPavGawDbOmOCv+Pubth92AHOwlC00=;
 b=boHTh43dogQAH2Bqfwv2AXfykfHy0x+RV5X91Wvme+uBeXNlBq5si0yT4R4yZOsUq0
 AH3lxzT7SvATWjNuMg1kjKCEEFsOjKd1lgW8cq2MWgthIcn3onDVdPGYx8mLCRRxD8dh
 kIGSn7sDjz/48b6H4eof22zY3NeSMJQOr9sJLRMrfaUWu9jCrL8RbQrk41RLLHKv0LdG
 fYeIG0UVr1DHBU7HT6ANghU+yok1k+s0BdOcgUv9SD6OKdMQfsnP9P52t2o4LG0mbY48
 HdioEbfSIXJ94G8ooWpib8U3fTF5NCo89lFIyMXeTaCiEPlpQGjyxs3ZHpEpkZ4Gu1YR
 niLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h8BiWXKFvIak7oPavGawDbOmOCv+Pubth92AHOwlC00=;
 b=rxUoKxGmUYrXrW2XKhc5uetEPzszpxwW5JywRdOMcbmddEkr6vUEIbN9ANtvO+S92H
 qp5GGAQ9ldeoWcXhDcxLVcL2P3e5Gu/wsJxVhxU/RDrcTwL4a9o9BfBZZKPYbs6h6ebx
 z4aPfDPDD5mu8zxuxBK2GXKpMvW87bkYHGZwXlo9SzVtUbb6pEm4Klnf9IoYlC8+6hx2
 8owW++SrzHh/dOwhVWRnAn3vqBUxrNouNG0GtaXIfnxkOV7x0+jcLp3oRx4heRqJAm7M
 tAkONEc6U3bfpDB/yNwvJwHPJTwYiecDnn7/F+PD35ZFJkUsKkZR8Cgvsu3/2IEuM6gA
 GXIA==
X-Gm-Message-State: AOAM533NupfMZXyjMDuN+rLJyabL/jte2dck8sPlcCx80Uh/ANT9Fmz4
 PSq1G+2J1s/lVMSgFYyiwPI=
X-Google-Smtp-Source: ABdhPJwWo5oMcw5fIPVIufS5O3/R658R5fQL3Gpg+6QmXiHi7U5eHx/8KtfeJjSkYN1ZajgWH2mzJg==
X-Received: by 2002:a17:90b:298:: with SMTP id
 az24mr3536902pjb.192.1598395028675; 
 Tue, 25 Aug 2020 15:37:08 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id z25sm268312pfg.150.2020.08.25.15.37.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 15:37:07 -0700 (PDT)
Date: Wed, 26 Aug 2020 07:37:02 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200825223702.GA24803@f3>
References: <20200821070334.738358-1-coiby.xu@gmail.com>
 <20200821083159.GA16579@f3> <20200825111608.2hi52kcqcdjaenki@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825111608.2hi52kcqcdjaenki@Rk>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-25 19:16 +0800, Coiby Xu wrote:
[...]
> > > @@ -1630,7 +1630,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
> > >  		   (unsigned long long)le64_to_cpu(wqicb->cnsmr_idx_addr));
> > >  }
> > > 
> > > -void ql_dump_tx_ring(struct tx_ring *tx_ring)
> > > +void ql_dump_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
> > >  {
> > 
> > This can be fixed without adding another argument:
> > 	struct ql_adapter *qdev;
> > 
> > 	if (!tx_ring)
> > 		return;
> > 
> > 	qdev = tx_ring->qdev;
> > 
> > ... similar comment for the other instances.
> 
> Thank you for the simpler solution!
> 
> For QL_OB_DUMP and QL_IB_DUMP, `struct ql_adapter *qdev` can't be
> obtained via container_of. So qdev are still directly passed to these
> functions.

That's right; sorry I didn't check those functions earlier.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
