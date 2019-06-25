Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2761155044
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 15:26:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23D2C87A6B;
	Tue, 25 Jun 2019 13:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oS7wzDbHibpj; Tue, 25 Jun 2019 13:26:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E5CF86DA3;
	Tue, 25 Jun 2019 13:26:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A89D1BF417
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94F76848F0
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 13:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v43Adi7iupBJ for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 13:25:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F03484332
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 13:25:58 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PDNcXa105670;
 Tue, 25 Jun 2019 13:25:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=btM3f7cnWfyfHl9uYSgV5IfHCK3H2g6mwy6yu8M5coM=;
 b=p6STTCSwouv1SmiCb03FFdT0MXKlcPJdRdSdFbPj4UvW0wmqjLF2P8Bi1Vn7D5L4zgtJ
 kEtTEZHZY1Bqq9/qrt/D4fkXS8A2t56c5hT/H2ITyzLYyHVkxpykZ0m0hOavhW09vGE5
 lwHDhXrCYiAlgvStJITrKxPUiglYvCsr09+AgB+autoagr9wuIq5EFKv/9A/gTMrgpp2
 DNNEHZIMtr2B2uQ9Gf1aDEJg33ed8DrFPokIt6L7EhcNgbBQJzfrgXEWUWBj4zJfAr/O
 gUzt1ppAYWuXq+VtD9ZWoi0r8Ry33l7q5U2BH/fQMpQAH1vyYFXJWaUKnObKFUAaGkj7 7w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2t9cyqc9hs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 13:25:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PDPTd8083495;
 Tue, 25 Jun 2019 13:25:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2t9acc3t11-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 13:25:56 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5PDPtf2031206;
 Tue, 25 Jun 2019 13:25:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 06:25:54 -0700
Date: Tue, 25 Jun 2019 16:25:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] staging: comedi: use dma_mmap_coherent for DMA-able
 buffer mmap
Message-ID: <20190625132547.GZ18776@kadam>
References: <20190625112659.13016-1-abbotti@mev.co.uk>
 <20190625114700.GZ28859@kadam>
 <a68e3315-87ac-f201-2b33-6c1acd9777ff@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a68e3315-87ac-f201-2b33-6c1acd9777ff@mev.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=739
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=792 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250105
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 02:21:41PM +0100, Ian Abbott wrote:
> On 25/06/2019 12:47, Dan Carpenter wrote:
> > On Tue, Jun 25, 2019 at 12:26:59PM +0100, Ian Abbott wrote:
> > > +		} else {
> > > +			for (i = 0; i < bm->n_pages; i++) {
> > > +				buf = &bm->page_list[i];
> > > +				ClearPageReserved(virt_to_page(buf->virt_addr));
> > 
> > I think we need a NULL check here:
> > 
> > 	if (!buf->virt_addr)
> > 		continue;
> > 
> > >   				free_page((unsigned long)buf->virt_addr);
> > >   			}
> > >   		}
> 
> Hi Dan, I don't think that is strictly required because bm->n_pages gets set
> to the number of successfully allocated pages (not the number of required
> pages) by comedi_buf_map_alloc():
> 
> > +		for (i = 0; i < n_pages; i++) {
> > +			buf = &bm->page_list[i];
> > +			buf->virt_addr = (void *)get_zeroed_page(GFP_KERNEL);
> > +			if (!buf->virt_addr)
> > +				break;
> > +
> > +			SetPageReserved(virt_to_page(buf->virt_addr));
> > +		}
> > +
> > +		bm->n_pages = i;
> 
> Here!           ^
> 

Oh, yeah.  I misread.  Sorry for the noise.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
