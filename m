Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD72DA371
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 03:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61BA4204FA;
	Thu, 17 Oct 2019 01:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCcnUdxZdp03; Thu, 17 Oct 2019 01:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB2B3204F1;
	Thu, 17 Oct 2019 01:52:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 822891BF97A
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7ADE587C49
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCjWGNZQ8eX5 for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 01:52:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8FC384EA0
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 01:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nvQ3rKLYcBuvjRA9mbVxHj0zFGjRN8NFx1d63gPtKlI=; b=Z0pjrXJuplMgIWNYVGm0gsStj
 96vReurUOFmW75uXZh8pz+Mg7oprx62UtnewxZIrn5TVr9eEQYgOI0JSXfpqPjkgl9Z9mkT/ArORr
 BsyRdC89eZ7KGUzgOKg0Gu5q4o6VLcmI6oMcPwiQTo6lttynxeL7L6+j9AgCwgIEI3GV58HT7+QF9
 SEO3Z0/8R10Ufej7U7hVyTKlxWbpjbf4Z4mt3KG8F1YXdzaRkdSZK8tR7jUFl2rOhrsEkjVMPB3CE
 uKFR3VJ6XmnDN584aT0fbbnQVmVdyU/F/CA9pJ2Nv1eriaqk0699/LBupEjqSCga5Qrsta/v0Z3e+
 R+xL0V0mg==;
Received: from [2601:1c0:6280:3f0::9ef4]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKuxv-0006Sf-1f; Thu, 17 Oct 2019 01:52:35 +0000
Subject: Re: [PATCH] staging: sm750fb: format description of parameters the to
 kernel doc format
To: gbittencourt <gabrielabittencourt00@gmail.com>,
 outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
References: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
 <799632e2-a328-d72b-397d-3ee6b5e87e06@infradead.org>
 <d55516db-28c5-aa53-8d07-20201dc4ffca@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c8fc60be-5bae-6b3c-d270-c0ca55be1c51@infradead.org>
Date: Wed, 16 Oct 2019 18:52:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <d55516db-28c5-aa53-8d07-20201dc4ffca@gmail.com>
Content-Type: multipart/mixed; boundary="------------B227F5DA5237A52E62CCD8AE"
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a multi-part message in MIME format.
--------------B227F5DA5237A52E62CCD8AE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 10/16/19 6:29 PM, gbittencourt wrote:
> Hi Randy,
> 
> On 10/16/19 10:25 PM, Randy Dunlap wrote:
>> Hi,
>>
>> On 10/16/19 6:18 PM, Gabriela Bittencourt wrote:
>>> Cluster comments that describes parameters of functions and create one
>>> single comment before the function in kernel doc format.
>> Good plan.
>>
>> How did you test this patch?
> I haven't test it. How can I do it?

Hm. There used to be a comment in a (now deleted) document named
Documentation/kernel-doc-nano-HOWTO.txt about how to test kernel-doc.

I took that comment and made a script from it.
I'll attach the script.  It's easy to use, but it is made to test only
one function or struct or union or enum at a time.

You need to have a script named 'kernel-doc' in your PATH or you can
specify where the script is located by using
$ KERNDOC=path/to/scripts/kernel-doc kdoc_function _parameters_

Its usage is:
  kdoc_function filename funcname [text|man|html|docbook|xml]

where funcname can be a function, struct, union, or enum name.
The output format can be any of those listed, but the default is "text".

Let me know if you have any questions or problems.

>>> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
>>> ---
>>>   drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
>>>   1 file changed, 37 insertions(+), 28 deletions(-)


-- 
~Randy

--------------B227F5DA5237A52E62CCD8AE
Content-Type: text/plain; charset=UTF-8;
 name="kdoc_function"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="kdoc_function"

IyEgL2Jpbi9zaAojIGZyb20gbGludXgvRG9jdW1lbnRhdGlvbi9rZXJuZWwtZG9jLW5hbm8t
SE9XVE8udHh0CiMgdXNlcyBsaW51eC9zY3JpcHRzL2tlcm5lbC1kb2Mgb3IgYSBjb3B5IG9m
IGl0IChpbiAkUEFUSCkuCiMgdXNpbmcgIkxBTkc9QyBvciBMQ19BTEw9QyBrZG9jX2Z1bmN0
aW9uIDxwcm1zPiIgY2FuIGJlIHVzZWZ1bC4KIyBDYW4gdXNlICJLRVJORE9DPTxzY3JpcHRf
ZmlsZW5hbWU+IGtkb2NfZnVuY3Rpb24gPHBybXM+IiB0byB2YXJ5CiMgd2hpY2gga2VybmVs
LWRvYyBzY3JpcHQgaXMgdXNlZC4KCnZlcmJvc2U9CmRlYnVnPQppZiBbICIkS0VSTkRPQyIg
PSAiIiBdOyB0aGVuCglLRVJORE9DPWtlcm5lbC1kb2MKZmkKCiMgY2FyZWZ1bDogbXVzdCBl
bnRlciAtdiBiZWZvcmUgLXg6CmlmIFsgIiQxIiA9ICItdiIgXTsgdGhlbgoJdmVyYm9zZT0i
LXYiCglzaGlmdApmaQppZiBbICIkMSIgPSAiLXgiIF07IHRoZW4KCWRlYnVnPSIteCIKCXNo
aWZ0CmZpCgpmaWxlPSIkMSIKZm49IiQyIgojIGZtdCBjYW4gYmUgInRleHR8bWFufGh0bWx8
ZG9jYm9va3x4bWwiIChkZWZhdWx0IGlzICJ0ZXh0IikKIyBkb2Nib29rIHByb2R1Y2VzIHht
bApmbXQ9IiQzIgppZiBbIHgkMyA9IHggXTsgdGhlbgoJZm10PSJ0ZXh0IgpmaQoKaWYgWyAi
JDIiID0gIiIgXTsgdGhlbgoJZWNobyAidXNhZ2U6IGtkb2NfZnVuY3Rpb24gZmlsZW5hbWUg
ZnVuY25hbWUgW3RleHR8bWFufGh0bWx8ZG9jYm9va3x4bWxdIgoJZXhpdCAxCmZpCgpjYXNl
ICRmbXQgaW4KICAgIG1hbikKCSRLRVJORE9DICR2ZXJib3NlICRkZWJ1ZyAtbWFuIC1mdW5j
dGlvbiAkZm4gJGZpbGUgfCBucm9mZiAtbWFuIHwgbGVzcwoJOzsKICAgIGh0bWwpCgkkS0VS
TkRPQyAkdmVyYm9zZSAkZGVidWcgLWh0bWwgLWZ1bmN0aW9uICRmbiAkZmlsZSA+a2VybmVs
ZG9jLmh0bWwKCWVjaG8gInNlZSBrZXJuZWxkb2MuaHRtbCIKCTs7CiAgICBkb2Nib29rfHht
bCkKCSRLRVJORE9DICR2ZXJib3NlICRkZWJ1ZyAtZG9jYm9vayAtZnVuY3Rpb24gJGZuICRm
aWxlID5rZXJuZWxkb2MueG1sCgllY2hvICJzZWUga2VybmVsZG9jLnhtbCIKCTs7CiAgICAq
KQoJJEtFUk5ET0MgJHZlcmJvc2UgJGRlYnVnIC10ZXh0IC1mdW5jdGlvbiAkZm4gJGZpbGUg
fCBsZXNzCgk7Owplc2FjCg==
--------------B227F5DA5237A52E62CCD8AE
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--------------B227F5DA5237A52E62CCD8AE--
