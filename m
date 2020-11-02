Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DF42A3484
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 20:48:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3230E86FE7;
	Mon,  2 Nov 2020 19:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ac_qkwFJwpbo; Mon,  2 Nov 2020 19:48:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 855AC86FDE;
	Mon,  2 Nov 2020 19:48:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FFAE1BF36E
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 80F7C204D9
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRaraCkwxBSr for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 19:48:18 +0000 (UTC)
X-Greylist: delayed 00:59:54 by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2076.outbound.protection.outlook.com [40.107.93.76])
 by silver.osuosl.org (Postfix) with ESMTPS id E6FA9204D1
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 19:48:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZfFD6R/V8+kG1MYQZLeZdfTHW470oX+VteVOrND19iI36jTQlVSNdrAlMgSU8uB4bRDGScfeJynV1YMoZpPsNapMtrBucc8NO1u3NVAYnQHkAqrra+wRjVKdHMGof2YrdiQJDO6y9NQnKorNC/AyifLsZxQuRsFpo2mmTnkrXTopbW5T/+lAAz/Jdl8q0KedLTNM7sxImXjwkoTAW5SVkHs32pQTYgUvaqws3RPDix7zkpmozrn2AYOSVO0p3l5YoG8B+AVSmzqdrfqyT+gfd2Cl6D2RWNkYob2CzVzBZyF9uGTZAmPCrsuky/CgxQt2r0KvArbNYB+5cyt+jWUi9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okrkGbdZCEFX5XefclZID0YZYTVdkssfilr7F/W8BJI=;
 b=nJaEZgBlI0Nt1imQldnFhB40T+kZOuWK71KtyKHJWnjy1QpOHU0c7xKxcM2DGy4d0WmLaQHXNCWz8PD8RkWx0T3P54RK25emYeUOX2on0WYucj8zuH6qy987oJFYNE91eZLGBxLmQF4S+F5nHDM6UPdA59O2xfwQPwHt+J+sKUoUGvo6h7d0llNxiBEA/J0NhXaY7k/VzMDnhrmsba65fXV0SWQsxFFN6L2KFPNk6IsYaK27/hsS7xL7tmUL/0/9Yu/IXdCY3sMma3bycY1ErorTE/S7hxXbfeeoBRBgNkbwMO1kf3zifqQxFcCufp5YMMbrnBEcve1JVAWBpW/JpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alum.wpi.edu; dmarc=pass action=none header.from=alum.wpi.edu;
 dkim=pass header.d=alum.wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alum.wpi.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okrkGbdZCEFX5XefclZID0YZYTVdkssfilr7F/W8BJI=;
 b=HCwpCJmoJ+HAq2XKinQAxgUT/V+lIwF6SGl0b1ThxiAKfasilQOAUz1S62wL1sIEOwbzalGAS0PS7mSs3/p8hGjjWOdjJhU3kRk9w/jD85Q+6RjGUXAK9onEh48Z4Bk4uquUzNwHDnQzlDfiopBB66ARy+KrROblRX+47HqN4v4=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=alum.wpi.edu;
Received: from CY4PR22MB0392.namprd22.prod.outlook.com (2603:10b6:903:b7::19)
 by CY4PR22MB0056.namprd22.prod.outlook.com (2603:10b6:903:e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Mon, 2 Nov
 2020 15:15:12 +0000
Received: from CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d]) by CY4PR22MB0392.namprd22.prod.outlook.com
 ([fe80::20c0:ced7:76fc:f46d%11]) with mapi id 15.20.3499.030; Mon, 2 Nov 2020
 15:15:11 +0000
X-Gm-Message-State: AOAM533dngsz2bbzwENzbxAoUqTf3bs9P+z/WkOx3/Tpsf11Rq+jDkaT
 6Hp3bgwIsrZ8sV3cF9Rx8h7+bH4dTVNMA02eaLM=
X-Google-Smtp-Source: ABdhPJxVnoRCQ//GYM7kAheakS7wIgAk8o/jLqajnsdIYC4u5RWusrb8mAoHL5+fzjzqXc9KItlzf57sT5sxKT2FAVs=
X-Received: by 2002:a37:8d45:: with SMTP id p66mr14345126qkd.461.1604329741330; 
 Mon, 02 Nov 2020 07:09:01 -0800 (PST)
References: <CABtq2xReyqg1wJM7W1d=KWRNTNN0Q6HCgJMWcQ6DH=SmKcxQRg@mail.gmail.com>
 <b0fd8b5a-66f3-871c-fe37-939d814f3f99@broadcom.com>
In-Reply-To: <b0fd8b5a-66f3-871c-fe37-939d814f3f99@broadcom.com>
From: "Brian O'Keefe" <bokeefe@alum.wpi.edu>
Date: Mon, 2 Nov 2020 10:08:49 -0500
X-Gmail-Original-Message-ID: <CABtq2xSwcMKbZHYe_yCMMFiQM9UhRRvbCtNL7YVxo0n6GtadyA@mail.gmail.com>
Message-ID: <CABtq2xSwcMKbZHYe_yCMMFiQM9UhRRvbCtNL7YVxo0n6GtadyA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-Originating-IP: [209.85.222.181]
X-ClientProxiedBy: MN2PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:208:c0::30) To CY4PR22MB0392.namprd22.prod.outlook.com
 (2603:10b6:903:b7::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qk1-f181.google.com (209.85.222.181) by
 MN2PR05CA0017.namprd05.prod.outlook.com (2603:10b6:208:c0::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.10 via Frontend Transport; Mon, 2 Nov 2020 15:15:11 +0000
Received: by mail-qk1-f181.google.com with SMTP id a64so8360707qkc.5 for
 <devel@driverdev.osuosl.org>; Mon, 02 Nov 2020 07:15:11 -0800 (PST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f8287aa-d55b-4b0f-ebaf-08d87f4217d7
X-MS-TrafficTypeDiagnostic: CY4PR22MB0056:
X-Microsoft-Antispam-PRVS: <CY4PR22MB005649AC1CE55B1F71E16CBC90100@CY4PR22MB0056.namprd22.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZBA8XktIQE+LfQYftDOpp7raOHSa2p+/OoQIdPe7OKvl0842E8IP4mdZCx8orYq6/2F1ZZgz5yXujudYmb76vVpu6ROLDz1pdewl/oPDI6lNWVXjPVj3xb0dajU3svaOuq55w6O5FhtffhRtzlR3zTqRQDWZ+6ELuYp8+4AANl7QanRDr4kwDj86MKi5qPIcS+2gKjzobLw6p/TB1UhybrPOzREwiFN2FTyfL6Ky52KudOayiBzsngFTI0z4VxZmnppE6iqscY5qz5ALPvOaNaQxfCqVUc5BSDKcRS5a6vYkOvHCX5PE3JBCEG0hyH3r
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR22MB0392.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39850400004)(346002)(366004)(136003)(396003)(6666004)(42186006)(75432002)(66946007)(8936002)(8676002)(186003)(2906002)(53546011)(786003)(316002)(478600001)(6862004)(5660300002)(66476007)(66556008)(4326008)(54906003)(107886003)(9686003)(86362001)(26005)(55446002)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: p7uYPCNm54g9DHXJ6nm5m1VWWR6EVxdSx4WoLVprcpAxkQ/g7P+s8Pezv/MaYeKQDDxRm5SxIcLI4Gk8IlcZmdDA5gS39tAAvD38uDHH8i+iUfkJGCf0/lRMFPqp+p1Y5Ib5s2HEmK5JOcFvygQY1gqM88MQbwx9t+tJmZph0RjaAaJSs9YpwVMgA+b47F+VNUjs4l7DZdCCIM+2YlG1qujNDGU2KGdYAyMrYzaqYzBw1mpCDN/N1TF8g+syIt3cVsnBfDIPql/IQgPa3LBzR/dSm5mlnf5rTTZGFPXtTjkgJma3GCyJ0kdO67Da2lyyxwZ1kOzUS1gixJmyXbelNNRy1ZUEUSIgAZ9hpY+ushobgWZMgXMhCG9SUHdi5QeDtscc8TiS1mIwI+nRiHnWmeDUPZMM1YAnilp4p7MhbCb6Syg8Awbme+bNrAleV0v6EseIbsBzzWoAi2A0QEHeG9BONnqwdcU9h2vOy2zPpLVjKMAsAPOdw5L3KXrncb6ZExl23pXwGItcjkzllawMTt+u6hInws/OFFXZTNUF6AGgaSWRNeY2oUhZzst91UqaOfg5HuVH1NjvPqOyxrgQRABy+VhMmi88xNEIHY9D67aY2O5GfxcxDvZkZOLKlv8Jc44lSiMPLZCqLhh5eUhmcg==
X-OriginatorOrg: alum.wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f8287aa-d55b-4b0f-ebaf-08d87f4217d7
X-MS-Exchange-CrossTenant-AuthSource: CY4PR22MB0392.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2020 15:15:11.8930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46a737af-4f36-4dda-ae69-041afc96eaef
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MOumKs7yDwSAVkgWUb+LUt/UdwcrdjqK6l8w5ksC4l0bRTsgmClqomArAeDmY+dyM4fQ++IkFe10uqPYqRMzoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR22MB0056
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
 Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 30, 2020 at 10:25 AM Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On 10/29/2020 2:52 PM, Brian O'Keefe wrote:
> > Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
> > the wild. This hardware exists on at least some Acer SW1-011 tablets.
> >
> > Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>
> > ---
> >   drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > index 5b1392deb0a7..7256d55fcc1b 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
> > @@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
> >          { SDIO_DEVICE(0x024c, 0x0525), },
> >          { SDIO_DEVICE(0x024c, 0x0623), },
> >          { SDIO_DEVICE(0x024c, 0x0626), },
> > +       { SDIO_DEVICE(0x024c, 0x0627), },
> >          { SDIO_DEVICE(0x024c, 0xb723), },
>
> shouldn't these be listed in include/linux/mmc/sdio_ids.h ?

It certainly looks that way; this was the only place that used hex
values in the SDIO_DEVICE macro directly. I'm happy to submit a
follow-up patch to create constants in sdio_ids.h and use those
instead.

>
> Regards,
> Arend
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
