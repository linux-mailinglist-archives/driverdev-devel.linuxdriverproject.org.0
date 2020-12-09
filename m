Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E52D4810
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 18:38:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB56A20794;
	Wed,  9 Dec 2020 17:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2iYZ86piaOC; Wed,  9 Dec 2020 17:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0CA82048A;
	Wed,  9 Dec 2020 17:38:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44CF81BF324
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 17:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3EA3D86E1A
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 17:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sozlV23rSpPT for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 17:38:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2070.outbound.protection.outlook.com [40.107.236.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C03F086E0F
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 17:38:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=amw11fC23C3jkIs20JTSgRr7mYXY341tyBsfoofloMe1OLmpRxbHGdQbuzMgT2QKVeEMwp4IVFyVgNchkfJI45UQ7unuIfK6wmJdEB9YhYPRlc/aBRZRL4VCU6Ugu6dznHHc6On4IgJLxYLcvc/8nY7a0DJg7wG+glx9N82CKmCVb8Xq9MFj3H7oArPEnecjc/YGKT79+/g+yIcH/mIwQojZzd1B2zH+Vm0lwJy7+6+4J3IfD83d04uzGB5lYCY1+qhtfi0KK+JTRyYg1Rtz8o3CjPlQCGKJJoPB+ZvU8Nz4rgiNeNWAz7VUHMHsuFUnTqkAH6wkE1vBdYAKN8KnbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSsk4T1tRoIaOow7kKfn57FwE+1x+wOHA/C3XVFtsMs=;
 b=GzSESL6ohgoAwyk3C+0eBmJN8lY7kLkSDNRxwkZOA5gFzN5axkdR4zLVLdMpowaCiJVf1STnyJLlDNdxxsCQBS76q1eZqZh0nxvkeJXx8nQV4wUzn33DHEgHaoRzFmt3j4kGNOjN5tPUEaDKpq3Qk7QGU6lC0rvhGogg663/InPbpskZBWOga5NZtnQmtwn6T5gQ1aT7rAF4FxP76t3JHs1RlkwlogoJjQrenNTGd3Gw8xQMeIH9Mog7fnQUcuDzxkukLuL/uCVCGqJE4hF09p/A7S9bhHN+YNNJQWM+rsORnqy3ybyhaKknp9Q24bKJD0bwjqlX94CiLi/TEoBo4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSsk4T1tRoIaOow7kKfn57FwE+1x+wOHA/C3XVFtsMs=;
 b=An25iJYYkxlEGbEOZJuaS5r2Q1NWwJhCQtxZIHwk42yE4Df17+CgRsLFCnWf722o5PWrdPbberZmx10dcRVxvqD2DHxZkzYehV/BO5CIshMMhfW9tslQKs7XrppxuGuwEiQIrETjybrdt4FLV6yeL2Dt4kEkuqcf/Xi7ZmMr7w8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5084.namprd11.prod.outlook.com (2603:10b6:806:116::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Wed, 9 Dec
 2020 17:38:16 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3541.031; Wed, 9 Dec 2020
 17:38:16 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: 'Rob Herring' <robh+dt@kernel.org>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 =?ISO-8859-1?Q?=27J=F3zsef_Horv=E1th=27?= <info@ministro.hu>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Date: Wed, 09 Dec 2020 18:38:08 +0100
Message-ID: <2907305.Mh6RI2rZIc@pc-42>
Organization: Silicon Labs
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fe0b:858f]
X-ClientProxiedBy: PR1PR01CA0009.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::22) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:1265:30ff:fe0b:858f) by
 PR1PR01CA0009.eurprd01.prod.exchangelabs.com (2603:10a6:102::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend
 Transport; Wed, 9 Dec 2020 17:38:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 170450c3-d60b-4d21-86c1-08d89c693537
X-MS-TrafficTypeDiagnostic: SA2PR11MB5084:
X-Microsoft-Antispam-PRVS: <SA2PR11MB508472C44E81EB5B8C47303793CC0@SA2PR11MB5084.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GrFIUVud5zHdD4It67k3GQC0o4XUI+I6nXY0lq6d43v38A/BzGAfVQe7+qbNCT50aMtzTSJyNc4qfeRprQUDnxoUFFB/BYtXjSOz3MK2/85oRjvV1sLY9r34sdj80j65XTbFKQOUrrUBBlg+Gg0lnBJDVB89PlOTeFy0Ee20JloJh8t1hx2huAoUCFU4s63sjCNI30OFCLbp0pZJHybL4DF3Mq+kj4wptVfEUiTcuoespRvyx05o4tRSwkLpgKFhMAB+aZECdnSgNrbQkIwjTcn4AZQ4gtXAQR3R2JQ7nVVNUpHAOQT7UNHU/adW86yr1ukljajS5Kq7pqp/SPWjhnWEchhEFHO3jsNyXOaYDpV0/2kc7ysT0HPxGID9XdfU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(346002)(376002)(36916002)(16526019)(86362001)(5660300002)(83380400001)(33716001)(6512007)(9686003)(2906002)(52116002)(6666004)(8676002)(186003)(66556008)(66476007)(4326008)(8936002)(6506007)(508600001)(6486002)(66946007)(66574015)(110136005)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?NNFKiF+qtmU4CZOvz0d/cMYjjJxEneGLb91c+f1JUceQcuNXgujTwdPzub?=
 =?iso-8859-1?Q?59Nr0BarpYYpLyWxk/iGUq7q+JmQi52M/jwETYN0quqSlIg3xh3snLEhUN?=
 =?iso-8859-1?Q?jRg/dBi40rsveP8F6gaZSerRsoGRCZeHYUb3QqvQ5q1MaNAALs7Rf9wBG7?=
 =?iso-8859-1?Q?SC6NgxFPgdArUrejCegFCCe39Mp1g+ckK1CiTdyRJyoXeo5bLg1ML12oY+?=
 =?iso-8859-1?Q?N7NqqJBUd6td/A2Xh4KT7u+e/FR270NzjabIY06dIG/2cgmHXNlT9tkccg?=
 =?iso-8859-1?Q?Wdj9zyp2aVOfy2QKLfai+LQKV71lVTvtbEEHu8Vu0gA5nL5nRH28NRYtYr?=
 =?iso-8859-1?Q?qDMrZA6Uhr/3LQv2Da20GPlPqQ3KIRyC0PPJlk5AdQKqUeu+Qt0PS4zdKM?=
 =?iso-8859-1?Q?lrMd0jr1yGQlCfN9lFxH5ZNYm5eWGUHA9EKOI6q4hwFvOWuwrgVnKsnMvJ?=
 =?iso-8859-1?Q?66bH6rrkJt+8GmtXvXfd2mfba6okYcQ25XZOZDrywL33kQufb/Yas2Vnra?=
 =?iso-8859-1?Q?YPbb65u82ZLor++1iaReMegbDIEGSA+Z2Wt0/W0luhvy94xq0K8URYjNL4?=
 =?iso-8859-1?Q?K4oVoAjXijFh7YS3bG8Ux8IWK1sFq/MK19bCHRkQdCok6XgfbSf0oTbaP3?=
 =?iso-8859-1?Q?YvvMCLpnbFP0kUC11tc7AK/DXuYVwe4ZvfwjI5EqHBt25/5bvWKWVcp09V?=
 =?iso-8859-1?Q?93m512cbsEs0OhxHEoEdm7q+LvXoJXDbfGddT9TVLqI+s7CohBxGijbPVy?=
 =?iso-8859-1?Q?12KRF592eqlaojfUh8y3cD2m1Cymx0a7ax5OaL8UhgjRtbNT7LD5G0MNgF?=
 =?iso-8859-1?Q?Av8CQS5fkIiBHOD5gZxPQ4FpzFqPqUDejN7EOwIXAZt+H/EktseyQjvxFa?=
 =?iso-8859-1?Q?pbbmhygUOFnjRURVdpqcndd1I7aL4NSdSD4aSvWIiW2IAkXLYp77HOhxKO?=
 =?iso-8859-1?Q?HC7B5gMWwB5+E2F4u/0DeNT9Cvl1qXLVgQ5u9P11BR9ZQWsNAI/JT6c4I3?=
 =?iso-8859-1?Q?QY6bA6oruPlex+qcpPcmfyqF5TqIX378+5TIVyiwNYjBQP+jZeXlYXprkf?=
 =?iso-8859-1?Q?i3Pu+BJSM3JYsSh+Bj232U15bgCemR1gkM/8Lu+om/DP?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 170450c3-d60b-4d21-86c1-08d89c693537
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 17:38:16.6695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RNp73FMuFn+7SLGFnbhokVlREKdKOY3AQJ/aFU2AQtJHhztu/5DYt3C7V8SVv9bX/8zQhgwXfni/vqg4YUpHTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5084
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
Cc: Info <info@ministro.hu>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 9 December 2020 12:09:58 CET Info wrote:
> =

> This is a serial port driver for
> Silicon Labs Si4455 Sub-GHz transciver.

Hello J=F3zsef,

Thank you for taking care of support of Silabs products :)


> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>

I think you have to use your personal address to sign-off.

> ---
>  .../bindings/staging/serial/silabs,si4455.txt |   39 +
>  drivers/staging/Kconfig                       |    2 +
>  drivers/staging/Makefile                      |    1 +
>  drivers/staging/si4455/Kconfig                |    8 +
>  drivers/staging/si4455/Makefile               |    2 +
>  drivers/staging/si4455/TODO                   |    3 +
>  drivers/staging/si4455/si4455.c               | 1465 +++++++++++++++++
>  drivers/staging/si4455/si4455_api.h           |   56 +
>  8 files changed, 1576 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
>  create mode 100644 drivers/staging/si4455/Kconfig
>  create mode 100644 drivers/staging/si4455/Makefile
>  create mode 100644 drivers/staging/si4455/TODO
>  create mode 100644 drivers/staging/si4455/si4455.c
>  create mode 100644 drivers/staging/si4455/si4455_api.h

Since you add a new directory, you should also update MAINTAINERS file
(checkpatch didn't warn you about that?).


> diff --git
> a/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> new file mode 100644
> index 000000000000..abd659b7b952
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> @@ -0,0 +1,39 @@
> +* Silicon Labs Si4455 EASY-TO-USE, LOW-CURRENT OOK/(G)FSK SUB-GHZ
> TRANSCEIVER

AFAIK, Si4455 is a programmable product. So I think that this driver only
work if the Si4455 use a specific firmware, isn't? In this case, you
should mention it in the documentation. =



> +
> +Required properties:
> +- compatible: Should be one of the following:
> +  - "silabs,si4455" for Silicon Labs Si4455-B1A or Si4455-C2A (driver
> automatically detects the part info),
> +  - "silabs,si4455b1a" for Silicon Labs Si4455-B1A,
> +  - "silabs,si4455c2a" for Silicon Labs Si4455-C2A,
> +- reg: SPI chip select number.
> +- interrupts: Specifies the interrupt source of the parent interrupt
> +  controller. The format of the interrupt specifier depends on the
> +  parent interrupt controller.
> +- clocks: phandle to the IC source clock (only external clock source
> supported).
> +- spi-max-frequency: maximum clock frequency on SPI port
> +- shdn-gpios: gpio pin for SDN
> +
> +Example:
> +
> +/ {
> +       clocks {
> +                si4455_1_2_osc: si4455_1_2_osc {
> +                        compatible =3D "fixed-clock";
> +                        #clock-cells =3D <0>;
> +                        clock-frequency  =3D <30000000>;
> +                };
> +       };
> +};
> +
> +&spi0 {
> +       si4455: si4455@0 {
> +               compatible =3D "silabs,si4455";
> +               reg =3D <0>;
> +               clocks =3D <&si4455_1_2_osc>;

It seems that the driver does not use this clock. So, is the clock
attribute mandatory? What is the purpose of declaring a fixed-clock
for this device?

> +               interrupt-parent =3D <&gpio>;
> +               interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
> +                shdn-gpios =3D <&gpio 26 1>;
> +                status =3D "okay";
> +                spi-max-frequency =3D <3000000>;
> +       };
> +};

[...]


> diff --git a/drivers/staging/si4455/Kconfig b/drivers/staging/si4455/Kcon=
fig
> new file mode 100644
> index 000000000000..666f726f2583
> --- /dev/null
> +++ b/drivers/staging/si4455/Kconfig
> @@ -0,0 +1,8 @@
> +# SPDX-License-Identifier: GPL-2.0
> +config SERIAL_SI4455
> +       tristate "Si4455 support"
> +       depends on SPI
> +       select SERIAL_CORE
> +       help
> +         This driver is for Silicon Labs's Si4455 Sub-GHz transciver.
> +         Say 'Y' here if you wish to use it as serial port.

So, in fact, Si4455 is not a UART. I don't know how this kind of device
should be presented to the userspace. Have you check if similar devices
already exists in the kernel?

I suggest to add linux-wpan@vger.kernel.org to the recipients of your
patch.


[...]
> +static int si4455_get_part_info(struct uart_port *port,
> +                               struct si4455_part_info *result)
> +{
> +       int ret;
> +       u8 dataOut[] =3D { SI4455_CMD_ID_PART_INFO };
> +       u8 dataIn[SI4455_CMD_REPLY_COUNT_PART_INFO];
> +
> +       ret =3D si4455_send_command_get_response(port,
> +                                               sizeof(dataOut),
> +                                               dataOut,
> +                                               sizeof(dataIn),
> +                                               dataIn);

Why not:

       ret =3D si4455_send_command_get_response(port,
                                              sizeof(*result), result,
                                              sizeof(dataIn), dataIn);

> +       if (ret =3D=3D 0) {
> +               result->CHIPREV =3D dataIn[0];
> +               memcpy(&result->PART, &dataIn[1],sizeof(result->PART));
> +               result->PBUILD =3D dataIn[3];
> +               memcpy(&result->ID, &dataIn[4], sizeof(result->ID));
> +               result->CUSTOMER =3D dataIn[6];
> +               result->ROMID =3D dataIn[7];
> +               result->BOND =3D dataIn[8];

... it would avoid all these lines.

> +       } else {
> +               dev_err(port->dev,
> +                       "%s: si4455_send_command_get_response error(%i)",
> +                       __func__,
> +                       ret);
> +       }
> +       return ret;
> +}

[...]

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
