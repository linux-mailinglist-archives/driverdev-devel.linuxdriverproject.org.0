Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E27A264CB3
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 20:20:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E65F68770C;
	Thu, 10 Sep 2020 18:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rw02dvi4j8He; Thu, 10 Sep 2020 18:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF4B1876FD;
	Thu, 10 Sep 2020 18:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06D311BF3AB
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 18:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E6FB12E1DC
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 18:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMqMshnnYw3Z for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 18:20:53 +0000 (UTC)
X-Greylist: delayed 20:03:12 by SQLgrey-1.7.6
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by silver.osuosl.org (Postfix) with ESMTPS id C5DB82E1B2
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1LUmDM1WzDwOF7pDiVkdVRwb0IaKPBxmeUfwegHKgCg=; b=Wx/6934bybew4f48jwuqCfh6d2
 WTIg3bZQIFUS8BQE7bdmrVE9rCGD0WDV42UHVFKzo478PVlrr77oP19J5Ec20xz36xxiCa6Hb4i3q
 w2NhrGmfGTThgnAxzamPS+WKZkiLd0VYs4Q/+inOnYciBSRteWtHn9s5PhIkx9M/8kF6DVVCIsZya
 qm1kRWmNYR11um4osu5xGm24pm8EBpDx3PBJ8jTPmt0pQ7fnwJHtvc9N8MZeDV5iYhch9EoonjfiP
 SfWEMSUydpG4CkQ9c052+7tAdkfaEp9r5SZ4P7xga+6hQkeeIxZXCn88lQ/Vk9dLsSvnoF22OSEnw
 egJAfLAQ==;
Received: from r167-61-107-82.dialup.adsl.anteldata.net.uy
 ([167.61.107.82]:6084 helo=cartrackgps.com)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <ctginfo@cartrackgps.com>) id 1kG8PL-0004yK-AB
 for devel@linuxdriverproject.org; Thu, 10 Sep 2020 00:17:39 +0200
From: CarTrack GPS<ctginfo@cartrackgps.com>
To: devel@linuxdriverproject.org
Subject: Distribuidor de GPS para Devel
Date: 09 Sep 2020 19:17:44 -0300
Message-ID: <20200909191744.824ACA573B50CB6F@cartrackgps.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpvds521.sideink.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cartrackgps.com
X-Get-Message-Sender-Via: cpvds521.sideink.com: authenticated_id:
 ctginfo@cartrackgps.com
X-Authenticated-Sender: cpvds521.sideink.com: ctginfo@cartrackgps.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: CarTrack GPS <ctginfo@cartrackgps.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Estimado Devel,

Agradecemos a clientes y amigos por todo su apoyo durante este =

per=EDodo de transici=F3n.
Le saluda Mario de la empresa Car Track GPS desarrolladores de =

software y GPS para localizaci=F3n. Estamos buscando distribuidores =

en su pa=EDs.
Comience un nuevo negocio y ofrezca localizaci=F3n v=EDa web, no =

cobramos por veh=EDculo, el software es ilimitado.

Desarrollamos dos nuevos equipos port=E1tiles de alta duraci=F3n de =

bater=EDa. Sirven para rastreo de trailers, contenedores, =

embarcaciones y tambi=E9n bienes. Prevenga el robo y recupere los =

bienes colocando un equipo discreto dentro de una de las cajas de =

mercader=EDa, o escondido dentro de un trailer. Los ladrones hoy no =

escatiman esfuerzos y roban el trailer completo con toda la =

carga.

Con nuestra App en su tel=E9fono puede detener el veh=EDculo en caso =

de robo, localizar en tiempo real, estimar distancia recorrida, =

controlar combustible y saber qu=E9 hacen los choferes.

La promoci=F3n le permitir=E1 tener su propia Plataforma Web a un =

bajo costo. M=E1s de 200 empresas est=E1n ofreciendo servicios de =

localizaci=F3n de veh=EDculos.
Todos ellos comenzaron a trav=E9s nuestro KIT PROFESIONAL de GPS.

Durante 30 d=EDas (hasta el 10/9/2020) ofrecemos un 10% de =

descuento en la compra de nuestras soluciones de GPS.
Este descuento le permitir=E1 adquirir nuestra soluci=F3n completa a =

trav=E9s de una inversi=F3n m=E1s baja de lo que normalmente ofrecemos. =


Tambi=E9n puede ofrecer el software a empresas que deseen tener su =

propio sistema y obtener as=ED una ganancia sin tener que hacer =

ninguna inversi=F3n.

Nuestras soluciones permiten rastrear veh=EDculos o personas, con =

bater=EDa interna, resistente al agua y a los golpes, alta =

sensibilidad que permite rastrear en el interior de casas u =

oficinas, muy bajo consumo y peque=F1o tama=F1o, bot=F3n de p=E1nico y =

relay incluido sin costo.

Solicite una propuesta comercial en espa=F1ol.

Saludos cordiales,
Mario Cruz
Car Track GPS
Tel.: +1 786 352 8766
Cel.: +505 86 41 54 59

Con Dios primero saldremos adelante, con salud y progreso.
Nuestros clientes en m=E1s de 100 pa=EDses y 20 a=F1os de experiencia =

nos avalan.

ID: 19352

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
