Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE362ACF8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 04:33:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D281B85D8E;
	Mon, 27 May 2019 02:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSVpVPWH1YCj; Mon, 27 May 2019 02:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2267E8462A;
	Mon, 27 May 2019 02:33:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFCFC1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 02:33:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D29608777B
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 02:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hApEsLeUDGmE for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 02:33:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DECE186CF0
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 02:33:37 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D7F0E9D3FE75A93C40BB;
 Mon, 27 May 2019 10:33:33 +0800 (CST)
Received: from [127.0.0.1] (10.177.96.96) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Mon, 27 May 2019
 10:33:29 +0800
Subject: =?UTF-8?Q?Re:_[PATCH_net]_staging:_Remove_set_but_not_used_variable?=
 =?UTF-8?B?IOKAmHN0YXR1c+KAmQ==?=
To: Sven Van Asbroeck <thesven73@gmail.com>
References: <20190525042642.78482-1-maowenan@huawei.com>
 <CAGngYiX04W+-jxqnWUD6CLh8LAr61FhtADGM0zbGcdeArqzC-Q@mail.gmail.com>
From: maowenan <maowenan@huawei.com>
Message-ID: <05c9bfac-c3ad-5889-8f47-0e6f53844a76@huawei.com>
Date: Mon, 27 May 2019 10:33:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAGngYiX04W+-jxqnWUD6CLh8LAr61FhtADGM0zbGcdeArqzC-Q@mail.gmail.com>
X-Originating-IP: [10.177.96.96]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/5/25 20:59, Sven Van Asbroeck wrote:
> On Sat, May 25, 2019 at 12:20 AM Mao Wenan <maowenan@huawei.com> wrote:
>>
>> The variable 'status' is not used any more, remve it.
> 
>>      /* do the transfers for this message */
>>      list_for_each_entry(transfer, &m->transfers, transfer_list) {
>>          if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
>> -            status = -EINVAL;
>>              break;
>>          }
> 
> This looks like an error condition that's not reported to the spi core.
> 
> Instead of removing the status variable (which also removes the error value!),
> maybe this should be reported to the spi core instead ?
> 
> Other spi drivers appear to do the following on the error path:
> m->status = status;
> return status;

I have reviewed the code again, and it is good idea to store m->status in error path, like below?

@@ -374,7 +374,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
     list_for_each_entry(transfer, &m->transfers, transfer_list) {
         if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
             status = -EINVAL;
-            break;
+            goto error;
         }

         /* transfer */
@@ -412,7 +412,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)

             if (count != transfer->len) {
                 status = -EIO;
-                break;
+                goto error;
             }
         }


...

     /* done work */
     spi_finalize_current_message(master);
     return 0;
+
+ error:
+    m->status = status;
+    return status;

 }


> 
>>
>> @@ -370,7 +368,6 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
>>
>>              if (count != transfer->len) {
>> -                status = -EIO;
>>                  break;
> 
> Same issue here.
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
